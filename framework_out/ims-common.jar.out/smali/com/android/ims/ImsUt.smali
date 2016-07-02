.class public Lcom/android/ims/ImsUt;
.super Ljava/lang/Object;
.source "ImsUt.java"

# interfaces
.implements Lcom/android/ims/ImsUtInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsUt$1;,
        Lcom/android/ims/ImsUt$IImsUtListenerProxy;
    }
.end annotation


# static fields
.field public static final CATEGORY_CB:Ljava/lang/String; = "CB"

.field public static final CATEGORY_CDIV:Ljava/lang/String; = "CDIV"

.field public static final CATEGORY_CONF:Ljava/lang/String; = "CONF"

.field public static final CATEGORY_CW:Ljava/lang/String; = "CW"

.field public static final CATEGORY_OIP:Ljava/lang/String; = "OIP"

.field public static final CATEGORY_OIR:Ljava/lang/String; = "OIR"

.field public static final CATEGORY_TIP:Ljava/lang/String; = "TIP"

.field public static final CATEGORY_TIR:Ljava/lang/String; = "TIR"

.field private static final DBG:Z = true

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG:Ljava/lang/String; = "ImsUt"


# instance fields
.field private mLockObj:Ljava/lang/Object;

.field private mPendingCmds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final miUt:Lcom/android/ims/internal/IImsUt;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsUt;)V
    .locals 3
    .param p1, "iUt"    # Lcom/android/ims/internal/IImsUt;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    .line 79
    iput-object p1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    .line 81
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    new-instance v1, Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;Lcom/android/ims/ImsUt$1;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsUt;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsUt;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsUt;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ims/ImsUt;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsUt;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/ims/ImsUt;Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsUt;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsUt;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 572
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 576
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 580
    const-string v0, "ImsUt"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    return-void
.end method

.method private sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "error"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 536
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v1, p2, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 544
    new-instance v0, Ljava/lang/String;

    const-string v1, "IMS UT exception"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, "errorString":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    new-instance v2, Lcom/android/ims/ImsException;

    iget v3, p2, Lcom/android/ims/ImsReasonInfo;->mCode:I

    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 550
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 547
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendSuccessReport(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 554
    if-nez p1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 559
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Ljava/lang/Object;

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 568
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 10

    .prologue
    .line 90
    iget-object v6, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v6

    .line 91
    :try_start_0
    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 93
    :try_start_1
    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v5}, Lcom/android/ims/internal/IImsUt;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    iget-object v7, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [Ljava/util/Map$Entry;

    invoke-interface {v5, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 102
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/util/Map$Entry;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 103
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    new-instance v7, Lcom/android/ims/ImsReasonInfo;

    const/16 v8, 0x322

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v5, v7}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 109
    .end local v0    # "arr$":[Ljava/util/Map$Entry;
    .end local v1    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    monitor-exit v6

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 94
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIP :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCLIP()I

    move-result v1

    .line 243
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 244
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 249
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIR :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCLIR()I

    move-result v1

    .line 217
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 218
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 223
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCOLP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLP :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCOLP()I

    move-result v1

    .line 295
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 296
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 301
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLR :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCOLR()I

    move-result v1

    .line 269
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 270
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 275
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCallBarring(ILandroid/os/Message;)V
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallBarring :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cbType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->queryCallBarring(I)I

    move-result v1

    .line 133
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 134
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 139
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallForward :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsUt;->queryCallForward(ILjava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 163
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 168
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    .locals 6
    .param p1, "condition"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallForwardInTimeSlot :: Ut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", condition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 703
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 705
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->queryCallForwardInTimeSlot(I)I

    move-result v1

    .line 707
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 708
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 713
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 718
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallWaiting :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCallWaiting()I

    move-result v1

    .line 190
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 191
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 196
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public transact(Landroid/os/Bundle;Landroid/os/Message;)V
    .locals 6
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transact :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ssInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->transact(Landroid/os/Bundle;)I

    move-result v1

    .line 521
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 522
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 527
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCLIP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIP :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 440
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 442
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIP(Z)I

    move-result v1

    .line 444
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 445
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 450
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCLIR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIR :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clirMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 413
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIR(I)I

    move-result v1

    .line 417
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 418
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 423
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCOLP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallWaiting :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 496
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLP(Z)I

    move-result v1

    .line 498
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 499
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 504
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCOLR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "presentation"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCOLR :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", presentation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 467
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 469
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLR(I)I

    move-result v1

    .line 471
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 472
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 477
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCallBarring(IZLandroid/os/Message;[Ljava/lang/String;)V
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "enable"    # Z
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;

    .prologue
    .line 315
    if-eqz p4, :cond_1

    .line 316
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 317
    .local v0, "bList":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p4

    if-ge v2, v4, :cond_0

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p4, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallBarring :: Ut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cbType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", barrList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 329
    .end local v0    # "bList":Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 331
    :try_start_0
    iget-object v4, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v4, p1, p2, p4}, Lcom/android/ims/internal/IImsUt;->updateCallBarring(IZ[Ljava/lang/String;)I

    move-result v3

    .line 333
    .local v3, "id":I
    if-gez v3, :cond_2

    .line 334
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    const/16 v6, 0x322

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    .end local v3    # "id":I
    :goto_2
    return-void

    .line 324
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallBarring :: Ut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cbType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    .restart local v3    # "id":I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .end local v3    # "id":I
    :goto_3
    :try_start_3
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    const/16 v6, 0x322

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public updateCallForward(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallForward :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeSeconds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsUt;->updateCallForward(IILjava/lang/String;I)I

    move-result v1

    .line 363
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 364
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p5, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 369
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p5, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallForwardInTimeSlot :: Ut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSlot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 734
    iget-object v8, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v8

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt;->updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I

    move-result v7

    .line 739
    .local v7, "id":I
    if-gez v7, :cond_0

    .line 740
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x322

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p6, v0}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    .end local v7    # "id":I
    :goto_0
    return-void

    .line 745
    .restart local v7    # "id":I
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 750
    .end local v7    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 746
    :catch_0
    move-exception v6

    .line 747
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x322

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p6, v0}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCallWaiting(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallWaiting :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCallWaiting(Z)I

    move-result v1

    .line 390
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 391
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 396
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
