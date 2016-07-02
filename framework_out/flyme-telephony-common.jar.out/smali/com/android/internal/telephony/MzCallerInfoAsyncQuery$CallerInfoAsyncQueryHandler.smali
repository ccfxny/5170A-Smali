.class Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MzCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# static fields
.field private static final QUERY_TIMEOUT:I = 0x3e7

.field private static final QUERY_WAIT_TIME:I = 0x3e8


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

.field private mContext:Landroid/content/Context;

.field private mCwList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field private mStartTime:J

.field private mTimeOut:Z

.field final synthetic this$0:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;

    .line 243
    invoke-static {p2}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 244
    iput-object p2, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$1;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/MzCallerInfo;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Lcom/android/internal/telephony/MzCallerInfo;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 309
    .local v2, "time":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 310
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 311
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private notifyAndMove(IZ)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "isFinal"    # Z

    .prologue
    .line 454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v2, "listensCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;

    .line 456
    .local v0, "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    iget-object v3, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    iget-object v3, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v3, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v4, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

    invoke-interface {v3, p1, v4, v5}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 460
    const-string v3, "MzCallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    .end local v0    # "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    :cond_1
    if-eqz p2, :cond_2

    .line 465
    iget-object v3, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;

    # invokes: Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->release()V
    invoke-static {v3}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->access$100(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;)V

    .line 466
    :cond_2
    return-void
.end method

.method private writeTimeOutToFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v4, "/data/data/com.android.phone/citimeout.txt"

    .line 293
    .local v4, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "/data/data/com.android.phone/citimeout.txt"

    const-string v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v5, "randomFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 295
    .local v2, "fileLength":J
    long-to-double v6, v2

    const-wide/high16 v8, 0x4120000000000000L    # 524288.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 296
    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 298
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nQuery ci cost time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->getTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "fileLength":J
    .end local v5    # "randomFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MzCallerInfoAsyncQuery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeTimeOutToFile fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 250
    new-instance v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 316
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_0

    .line 317
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 334
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string v3, "MzCallerInfoAsyncQuery"

    const-string v4, "Handle time out processing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v3, "TimeOut happend"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->writeTimeOutToFile(Ljava/lang/String;)V

    .line 324
    iput-boolean v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mTimeOut:Z

    .line 325
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 326
    .local v2, "token":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;

    .line 327
    .local v1, "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    new-instance v0, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    .line 328
    .local v0, "ci":Lcom/android/internal/telephony/MzCallerInfo;
    iget-object v3, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 329
    iget-object v3, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/MzCallerInfo;->updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    iput-boolean v5, v0, Lcom/android/internal/telephony/MzCallerInfo;->isTimeoutRet:Z

    .line 331
    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

    .line 333
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->notifyAndMove(IZ)V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 348
    const-string v5, "MzCallerInfoAsyncQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 351
    check-cast v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;

    .line 352
    .local v1, "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    if-nez v1, :cond_0

    .line 357
    const-string v5, "MzCallerInfoAsyncQuery"

    const-string v6, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mTimeOut:Z

    if-eqz v5, :cond_2

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->writeTimeOutToFile(Ljava/lang/String;)V

    .line 366
    const-string v5, "MzCallerInfoAsyncQuery"

    const-string v6, "Got Query result but time has out."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v5, :cond_3

    .line 382
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$QueryPoolException;

    const-string v6, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 376
    :cond_2
    const/16 v5, 0x3e7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->removeMessages(I)V

    goto :goto_1

    .line 391
    :cond_3
    iget v5, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 394
    new-instance v5, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/MzCallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v0

    .line 441
    .local v0, "ciQuery":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_4
    :goto_2
    const-string v5, "MzCallerInfoAsyncQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "constructing MzCallerInfo object for token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

    if-nez v5, :cond_9

    .line 444
    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

    .line 450
    :goto_3
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->notifyAndMove(IZ)V

    goto :goto_0

    .line 395
    .end local v0    # "ciQuery":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_5
    iget v5, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 396
    new-instance v5, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    iget v6, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-virtual {v5, v6, p3}, Lcom/android/internal/telephony/MzCallerInfo;->markAsVoiceMail(ILandroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v0

    .restart local v0    # "ciQuery":Lcom/android/internal/telephony/MzCallerInfo;
    goto :goto_2

    .line 398
    .end local v0    # "ciQuery":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    iget-object v6, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v5, p3, v6}, Lcom/android/internal/telephony/MzCallerInfo;->getCallerInfoViaNumber(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v0

    .line 399
    .restart local v0    # "ciQuery":Lcom/android/internal/telephony/MzCallerInfo;
    const-string v5, "MzCallerInfoAsyncQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> Got mCallerInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lcom/android/internal/telephony/MzCallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfo;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v4

    .line 403
    .local v4, "newCallerInfo":Lcom/android/internal/telephony/MzCallerInfo;
    if-eq v4, v0, :cond_7

    .line 404
    move-object v0, v4

    .line 405
    const-string v5, "MzCallerInfoAsyncQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#####async contact look up with numeric username"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/MzCallerInfo;->updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    iget-object v5, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 428
    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    const-string v6, "country_detector"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/CountryDetector;

    .line 431
    .local v3, "detector":Landroid/location/CountryDetector;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 432
    invoke-virtual {v3}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "defaultCountryIso":Ljava/lang/String;
    :goto_4
    iget-object v5, v1, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 434
    .end local v2    # "defaultCountryIso":Ljava/lang/String;
    :cond_8
    const-string v2, "CN"

    .restart local v2    # "defaultCountryIso":Ljava/lang/String;
    goto :goto_4

    .line 446
    .end local v2    # "defaultCountryIso":Ljava/lang/String;
    .end local v3    # "detector":Landroid/location/CountryDetector;
    .end local v4    # "newCallerInfo":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/MzCallerInfo;->copyFrom(Lcom/android/internal/telephony/MzCallerInfo;)V

    .line 447
    iget-object v5, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/MzCallerInfo;->isTimeoutRet:Z

    goto/16 :goto_3
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 259
    if-eqz p2, :cond_4

    instance-of v2, p2, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;

    if-eqz v2, :cond_4

    move-object v0, p2

    .line 260
    check-cast v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;

    .line 261
    .local v0, "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    const-string v2, "MzCallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startQuery in subclass, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v2, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eq v2, v5, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eq v2, v6, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v2, v7, :cond_3

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;

    move-object v2, p2

    check-cast v2, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget v2, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v2, v5, :cond_2

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mStartTime:J

    .line 270
    const/16 v2, 0x3e7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 271
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 272
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 287
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v0    # "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    :goto_1
    return-void

    .line 274
    .restart local v0    # "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    :cond_2
    iget v2, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eq v2, v6, :cond_1

    iget v2, v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eq v2, v7, :cond_1

    goto :goto_1

    .line 279
    :cond_3
    const-string v2, "MzCallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startQuery: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v0    # "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    :cond_4
    const-string v2, "MzCallerInfoAsyncQuery"

    const-string v3, "Cookie is null or isn\'t a object of CookieWrapper, ignoring startQuery() request."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
