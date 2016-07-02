.class Lcom/android/server/sip/SipWakeupTimer;
.super Landroid/content/BroadcastReceiver;
.source "SipWakeupTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipWakeupTimer$1;,
        Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;,
        Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SipWakeupTimer"

.field private static final TRIGGER_TIME:Ljava/lang/String; = "TriggerTime"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mEventQueue:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/server/sip/SipWakeupTimer$MyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;-><init>(Lcom/android/server/sip/SipWakeupTimer$1;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    .line 53
    iput-object p1, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    .line 54
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    iput-object p2, p0, Lcom/android/server/sip/SipWakeupTimer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 60
    return-void
.end method

.method private cancelAlarm()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 87
    return-void
.end method

.method private execute(J)V
    .locals 7
    .param p1, "triggerTime"    # J

    .prologue
    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time\'s up, triggerTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 259
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 262
    iput-wide p1, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    .line 263
    iget-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    iget v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 266
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 269
    .end local v0    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    :cond_3
    const-string v2, "after timeout execution"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->printQueue()V

    .line 272
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertEvent(Lcom/android/server/sip/SipWakeupTimer$MyEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .prologue
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 117
    .local v4, "now":J
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v8, v3

    add-long/2addr v8, v4

    iput-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 119
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 123
    .local v0, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 124
    .local v2, "minPeriod":I
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    if-gt v2, v3, :cond_1

    .line 125
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    iput v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 126
    iget v1, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    .line 127
    .local v1, "interval":I
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    sub-long/2addr v8, v4

    long-to-int v3, v8

    sub-int/2addr v1, v3

    .line 128
    div-int v3, v1, v2

    mul-int v1, v3, v2

    .line 129
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 130
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v1    # "interval":I
    :cond_1
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v8, v3

    add-long v6, v4, v8

    .line 133
    .local v6, "triggerTime":J
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    cmp-long v3, v8, v6

    if-gez v3, :cond_2

    .line 134
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    iput-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 135
    iget-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v10, v3

    sub-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    .line 139
    :goto_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->recalculatePeriods()V

    goto :goto_0

    .line 137
    :cond_2
    iput-wide v6, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string v0, "SipWakeupTimer"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method private printQueue()V
    .locals 6

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 241
    .local v1, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": scheduled at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": last at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 246
    .end local v1    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 247
    const-string v3, "     ....."

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 251
    :cond_2
    :goto_0
    return-void

    .line 248
    :cond_3
    if-nez v0, :cond_2

    .line 249
    const-string v3, "     <empty>"

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recalculatePeriods()V
    .locals 12

    .prologue
    .line 90
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 93
    .local v1, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    .line 94
    .local v4, "minPeriod":I
    iget-wide v6, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 95
    .local v6, "minTriggerTime":J
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 96
    .local v0, "e":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    div-int/2addr v8, v4

    mul-int/2addr v8, v4

    iput v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 97
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v10, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    sub-long/2addr v8, v6

    long-to-int v3, v8

    .line 99
    .local v3, "interval":I
    div-int v8, v3, v4

    mul-int v3, v8, v4

    .line 100
    int-to-long v8, v3

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    goto :goto_1

    .line 102
    .end local v0    # "e":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v3    # "interval":I
    :cond_1
    new-instance v5, Ljava/util/TreeSet;

    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 104
    .local v5, "newQueue":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v5, v8}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->clear()V

    .line 106
    iput-object v5, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    .line 108
    const-string v8, "queue re-calculated"

    invoke-direct {p0, v8}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->printQueue()V

    goto :goto_0
.end method

.method private scheduleNext()V
    .locals 8

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    .line 211
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "pendingIntent is not null!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    :cond_2
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 215
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "TriggerTime"

    iget-wide v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 220
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-wide v6, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    invoke-virtual {v3, v4, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private showTime(J)Ljava/lang/String;
    .locals 9
    .param p1, "time"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 280
    rem-long v4, p1, v6

    long-to-int v1, v4

    .line 281
    .local v1, "ms":I
    div-long v4, p1, v6

    long-to-int v2, v4

    .line 282
    .local v2, "s":I
    div-int/lit8 v0, v2, 0x3c

    .line 283
    .local v0, "m":I
    rem-int/lit8 v2, v2, 0x3c

    .line 284
    const-string v3, "%d.%d.%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private stopped()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "Timer stopped"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 182
    .local v1, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 185
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-object v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_2

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    cancel found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 178
    .end local v0    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v1    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 190
    .restart local v1    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    .line 202
    :cond_4
    :goto_2
    const-string v3, "cancel: X"

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->printQueue()V

    goto :goto_0

    .line 192
    :cond_5
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_4

    .line 193
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    .line 194
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 195
    .restart local v1    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    iput v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 196
    iget-wide v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 198
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->recalculatePeriods()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "TriggerTime"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 231
    const-string v1, "TriggerTime"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 232
    .local v2, "triggerTime":J
    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipWakeupTimer;->execute(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v2    # "triggerTime":J
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: unrecognized intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set(ILjava/lang/Runnable;)V
    .locals 7
    .param p1, "period"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 155
    .local v2, "now":J
    new-instance v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/android/server/sip/SipWakeupTimer$MyEvent;-><init>(ILjava/lang/Runnable;J)V

    .line 156
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipWakeupTimer;->insertEvent(Lcom/android/server/sip/SipWakeupTimer$MyEvent;)V

    .line 158
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V

    .line 163
    :cond_2
    iget-wide v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 165
    .local v4, "triggerTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set: add event "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " scheduled on "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " at "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", #events="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->printQueue()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v2    # "now":J
    .end local v4    # "triggerTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
