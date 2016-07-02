.class public Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "MzCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$1;,
        Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final ENABLE_UNKNOWN_NUMBER_GEO_DESCRIPTION:Z = true

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MzCallerInfoAsyncQuery"


# instance fields
.field private mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .prologue
    .line 632
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 633
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 638
    return-void
.end method

.method static getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const-string v4, "MzCallerInfoAsyncQuery"

    const-string v5, "Trying to get current content resolver..."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 122
    .local v0, "currentUser":I
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    .line 124
    .local v2, "myUser":I
    const-string v4, "MzCallerInfoAsyncQuery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "myUser="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "currentUser="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eq v2, v0, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 131
    .local v3, "otherContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 137
    .end local v3    # "otherContext":Landroid/content/Context;
    :goto_0
    return-object v4

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MzCallerInfoAsyncQuery"

    const-string v5, "Can\'t find self package"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/MzCallerInfo;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/MzCallerInfo;)Lcom/android/internal/telephony/MzCallerInfo;

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$702(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 650
    iput-object v1, p0, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    goto :goto_0
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 654
    if-eqz p0, :cond_1

    .line 655
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "uriString":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 657
    .local v0, "indexOfLastSlash":I
    if-lez v0, :cond_0

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .end local v0    # "indexOfLastSlash":I
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 481
    new-instance v8, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;-><init>()V

    .line 482
    .local v8, "c":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 484
    const-string v0, "MzCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting query for URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " handler: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v2, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$1;)V

    .line 488
    .local v2, "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 489
    iput-object p4, v2, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 490
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 492
    iget-object v0, v8, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;
    .locals 6
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 511
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v5

    .local v5, "subId":I
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 512
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;
    .locals 18
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "subId"    # I

    .prologue
    .line 529
    const-string v2, "MzCallerInfoAsyncQuery"

    const-string v3, "##### CallerInfoAsyncQuery startQuery()... #####"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v2, "MzCallerInfoAsyncQuery"

    const-string v3, "- number: xxxxxxx"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v2, "MzCallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- cookie: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    const-string v2, "MzCallerInfoAsyncQuery"

    const-string v3, "  - Treating number as a SIP address: xxxxxxx"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 561
    .local v5, "contactRef":Landroid/net/Uri;
    const-string v7, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 564
    .local v7, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 589
    .local v8, "selectionArgs":[Ljava/lang/String;
    :goto_0
    const-string v2, "MzCallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> contactRef: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v2, "MzCallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> selection: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz v8, :cond_3

    .line 592
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v2, v8

    if-ge v12, v2, :cond_3

    .line 593
    const-string v2, "MzCallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> selectionArgs["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v8, v12

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 567
    .end local v5    # "contactRef":Landroid/net/Uri;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "i":I
    :cond_0
    const-wide/16 v14, 0x0

    .line 568
    .local v14, "person_id":J
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_1

    move-object/from16 v11, p4

    .line 569
    check-cast v11, Lcom/android/internal/telephony/Connection;

    .line 570
    .local v11, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v13

    .line 571
    .local v13, "userData":Ljava/lang/Object;
    instance-of v2, v13, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 572
    check-cast v13, Ljava/lang/Long;

    .end local v13    # "userData":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 575
    .end local v11    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_2

    .line 576
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 584
    .restart local v5    # "contactRef":Landroid/net/Uri;
    :goto_2
    const/4 v7, 0x0

    .line 585
    .restart local v7    # "selection":Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 579
    .end local v5    # "contactRef":Landroid/net/Uri;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 580
    .restart local v5    # "contactRef":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "directory"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 598
    .end local v14    # "person_id":J
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    new-instance v10, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;

    invoke-direct {v10}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;-><init>()V

    .line 599
    .local v10, "c":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;
    move-object/from16 v0, p1

    invoke-direct {v10, v0, v5}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 602
    new-instance v4, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$1;)V

    .line 603
    .local v4, "cw":Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 604
    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 605
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 606
    move/from16 v0, p5

    iput v0, v4, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->subId:I

    .line 609
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 610
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 617
    :goto_3
    iget-object v2, v10, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-object v10

    .line 611
    :cond_4
    move/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 612
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_3

    .line 614
    :cond_5
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/internal/telephony/MzCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_3
.end method
