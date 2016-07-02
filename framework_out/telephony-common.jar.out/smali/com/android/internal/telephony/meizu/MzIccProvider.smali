.class public Lcom/android/internal/telephony/meizu/MzIccProvider;
.super Lcom/android/internal/telephony/IccProvider;
.source "MzIccProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/meizu/MzIccProvider$AdnRecordComparator;,
        Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;
    }
.end annotation


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

.field private static final DBG:Z = true

.field public static final HAS_ADDITIONAL_NUMBER_KEY:Ljava/lang/String; = "has_additional_number"

.field public static final HAS_EMAIL_KEY:Ljava/lang/String; = "has_email"

.field public static final IS_USIM_KEY:Ljava/lang/String; = "is_usim_key"

.field private static final ITEM:I = 0x1f4

.field public static final REQUEST_BY_ID:Ljava/lang/String; = "request_by_id"

.field static final SIM_ERROR_CODE_SIM_FULL:I = -0x2

.field static final SIM_ERROR_CODE_UNKONWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MzIccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private locSimContact:Landroid/database/Cursor;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 66
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "second_number"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/subId/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/subId/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/subId/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "item"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;-><init>()V

    .line 713
    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 746
    const/4 v10, 0x0

    .line 754
    .local v10, "success":Z
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 756
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 757
    const-string v4, ""

    const-string v5, ""

    move/from16 v2, p6

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 765
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 766
    return v10

    .line 762
    :catch_0
    move-exception v9

    .line 763
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "additionalNumber"    # Ljava/lang/String;
    .param p5, "emailString"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addIccRecordToEf: efType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", additionalNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", emailString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 572
    const/4 v12, 0x0

    .line 574
    .local v12, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v3, "IIccPhoneBookMz"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;

    move-result-object v2

    .line 576
    .local v2, "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    if-eqz v2, :cond_3

    .line 577
    move/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;->getAdnRecordsInEf(II)Ljava/util/List;

    move-result-object v12

    .line 578
    if-eqz v12, :cond_3

    .line 580
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 581
    .local v11, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adnRecords.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 583
    const/4 v15, -0x2

    .line 584
    .local v15, "index":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v11, :cond_0

    .line 585
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 586
    add-int/lit8 v8, v14, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    add-int/lit8 v15, v14, 0x1

    .line 603
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    .end local v11    # "N":I
    .end local v14    # "i":I
    .end local v15    # "index":I
    :cond_0
    :goto_1
    return v15

    .line 589
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    .restart local v11    # "N":I
    .restart local v14    # "i":I
    .restart local v15    # "index":I
    :cond_1
    const/4 v15, -0x1

    .line 591
    goto :goto_1

    .line 584
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 599
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    .end local v11    # "N":I
    .end local v14    # "i":I
    .end local v15    # "index":I
    :catch_0
    move-exception v13

    .line 600
    .local v13, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 603
    .end local v13    # "ex":Ljava/lang/SecurityException;
    :cond_3
    :goto_2
    const/4 v15, -0x1

    goto :goto_1

    .line 597
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 805
    const/4 v10, 0x0

    .line 808
    .local v10, "success":Z
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 810
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 811
    const-string v6, ""

    const-string v7, ""

    move/from16 v2, p6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 819
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 820
    return v10

    .line 816
    :catch_0
    move-exception v9

    .line 817
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 814
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)Z
    .locals 11
    .param p1, "efType"    # I
    .param p2, "index"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .prologue
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 634
    const/4 v10, 0x0

    .line 637
    .local v10, "success":Z
    :try_start_0
    const-string v1, "IIccPhoneBookMz"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;

    move-result-object v0

    .line 639
    .local v0, "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    if-eqz v0, :cond_0

    .line 640
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 647
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 648
    return v10

    .line 644
    :catch_0
    move-exception v9

    .line 645
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getRequestSubId(Landroid/net/Uri;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestSubId url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 777
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 11
    .param p1, "efType"    # I

    .prologue
    .line 856
    iget-object v8, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v7

    .line 857
    .local v7, "subIdList":[I
    array-length v8, v7

    new-array v5, v8, [Landroid/database/Cursor;

    .line 859
    .local v5, "result":[Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 860
    .local v1, "i":I
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v6, v0, v3

    .line 861
    .local v6, "subId":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v8

    aput-object v8, v5, v2

    .line 862
    const-string v8, "MzIccProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAllSimContacts: subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 865
    .end local v6    # "subId":I
    :cond_0
    new-instance v8, Landroid/database/MergeCursor;

    invoke-direct {v8, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v8
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "efType"    # I
    .param p2, "subId"    # I

    .prologue
    .line 824
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 826
    const/4 v1, 0x0

    .line 828
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 830
    .local v5, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 831
    invoke-interface {v5, p2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 839
    .end local v5    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 841
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 842
    .local v0, "N":I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 843
    .local v2, "cursor":Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 844
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 845
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 844
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 835
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 836
    .local v3, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "MzIccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 833
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadFromEfEx(I[II)Landroid/database/Cursor;
    .locals 19
    .param p1, "efType"    # I
    .param p2, "ids"    # [I
    .param p3, "subId"    # I

    .prologue
    .line 460
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadFromEfEx: efType="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "subId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 461
    const/4 v14, 0x0

    .line 462
    .local v14, "isUsimorCsim":Z
    const/4 v9, 0x0

    .line 463
    .local v9, "hasAdditionalNumber":Z
    const/4 v10, 0x0

    .line 465
    .local v10, "hasEmail":Z
    const/4 v4, 0x0

    .line 467
    .local v4, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v17, "IIccPhoneBookMz"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;

    move-result-object v13

    .line 469
    .local v13, "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    if-eqz v13, :cond_0

    .line 470
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v13, v0, v1}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;->getAdnRecordsInEf(II)Ljava/util/List;

    move-result-object v4

    .line 471
    move/from16 v0, p3

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;->isUsimorCsim(I)Z

    move-result v14

    .line 472
    move/from16 v0, p3

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;->hasAdditionalNumber(I)Z

    move-result v9

    .line 473
    move/from16 v0, p3

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;->hasEmail(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 481
    .end local v13    # "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    :cond_0
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    .line 483
    .local v6, "columnNames":[Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 485
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    .line 486
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/uicc/AdnRecord;

    add-int/lit8 v18, v11, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->setTempInt(I)V

    .line 485
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 477
    .end local v6    # "columnNames":[Ljava/lang/String;
    .end local v11    # "i":I
    :catch_0
    move-exception v8

    .line 478
    .local v8, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    .end local v8    # "ex":Ljava/lang/SecurityException;
    .restart local v6    # "columnNames":[Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 491
    .local v16, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    move-object/from16 v4, v16

    .line 494
    new-instance v17, Lcom/android/internal/telephony/meizu/MzIccProvider$AdnRecordComparator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider$AdnRecordComparator;-><init>(Lcom/android/internal/telephony/meizu/MzIccProvider;)V

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 498
    .local v2, "N":I
    new-instance v15, Landroid/database/MatrixCursor;

    invoke-direct {v15, v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 499
    .local v15, "matrixCursor":Landroid/database/MatrixCursor;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "adnRecords.size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 500
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 501
    .local v3, "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadFromEfEx: ids="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 502
    if-eqz p2, :cond_3

    .line 503
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getTempInt()I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 504
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadRecordEx(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;)V

    goto :goto_2

    .line 507
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadRecordEx(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;)V

    goto :goto_2

    .line 510
    .end local v3    # "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_4
    move-object v7, v15

    .line 518
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "matrixCursor":Landroid/database/MatrixCursor;
    .end local v16    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 519
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v17, "is_usim_key"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 520
    const-string v17, "has_additional_number"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 521
    const-string v17, "has_email"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 522
    new-instance v17, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v5}, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;-><init>(Lcom/android/internal/telephony/meizu/MzIccProvider;Landroid/database/Cursor;Landroid/os/Bundle;)V

    return-object v17

    .line 513
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    const-string v17, "MzIccProvider"

    const-string v18, "Cannot load ADN records"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v7    # "cursor":Landroid/database/Cursor;
    goto :goto_3

    .line 475
    .end local v6    # "columnNames":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v17

    goto/16 :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 11
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 901
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 902
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/Object;

    .line 903
    .local v2, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 906
    .local v8, "number":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadRecord: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 907
    const/4 v9, 0x0

    aput-object v0, v2, v9

    .line 908
    const/4 v9, 0x1

    aput-object v8, v2, v9

    .line 910
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 911
    .local v5, "emails":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 912
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v4, "emailString":Ljava/lang/StringBuilder;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 914
    .local v3, "email":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding email:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 918
    .end local v3    # "email":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 920
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "emailString":Ljava/lang/StringBuilder;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v9

    .line 921
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 923
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v2    # "contact":[Ljava/lang/Object;
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private loadRecordEx(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;)V
    .locals 12
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 527
    sget-object v10, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    array-length v10, v10

    new-array v2, v10, [Ljava/lang/Object;

    .line 529
    .local v2, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 532
    .local v9, "number":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadRecordEx: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 534
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 535
    :cond_1
    const/4 v10, 0x0

    aput-object v0, v2, v10

    .line 536
    const/4 v10, 0x1

    aput-object v9, v2, v10

    .line 537
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, "emails":[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v4, "emailString":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 541
    .local v7, "index":I
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v3, v1, v6

    .line 542
    .local v3, "email":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding email:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 544
    if-lez v7, :cond_2

    .line 545
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    add-int/lit8 v7, v7, 0x1

    .line 541
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 550
    .end local v3    # "email":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 552
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "emailString":Ljava/lang/StringBuilder;
    .end local v6    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "len$":I
    :cond_4
    const/4 v10, 0x3

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getTempInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v10

    .line 555
    const/4 v10, 0x4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 556
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdditionalNumber: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 558
    const/4 v10, 0x5

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 559
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSortKey: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 565
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v2    # "contact":[Ljava/lang/Object;
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 770
    const-string v0, "MzIccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MzIccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .prologue
    const/4 v4, 0x0

    .line 708
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "length":I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 709
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 784
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 786
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 787
    const-string v2, "len of input String is 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 796
    .end local p1    # "inVal":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 790
    .restart local p1    # "inVal":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 792
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 793
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    .line 796
    goto :goto_0
.end method

.method private static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 690
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 702
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 695
    .restart local p2    # "defaultValue":Z
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 696
    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 700
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 702
    const-string v4, "=0"

    invoke-static {v1, v0, v4, v3}, Lcom/android/internal/telephony/meizu/MzIccProvider;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "=false"

    invoke-static {v1, v0, v4, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move p2, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 876
    const/4 v10, 0x0

    .line 879
    .local v10, "success":Z
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 881
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move/from16 v2, p7

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 882
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 890
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 891
    return v10

    .line 887
    :catch_0
    move-exception v9

    .line 888
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 885
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 12
    .param p1, "efType"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "newAdditionalNumber"    # Ljava/lang/String;
    .param p5, "newEmailString"    # Ljava/lang/String;
    .param p6, "index"    # I
    .param p7, "pin2"    # Ljava/lang/String;
    .param p8, "subId"    # I

    .prologue
    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAdditionalNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 612
    const/4 v11, 0x0

    .line 615
    .local v11, "success":Z
    :try_start_0
    const-string v2, "IIccPhoneBookMz"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;

    move-result-object v1

    .line 617
    .local v1, "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 618
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 625
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/meizu/IIccPhoneBookMz;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEfByIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 626
    return v11

    .line 622
    :catch_0
    move-exception v10

    .line 623
    .local v10, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    .end local v10    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 291
    sget-object v2, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 292
    .local v16, "match":I
    packed-switch v16, :pswitch_data_0

    .line 314
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot insert into URL: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 295
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    .line 318
    .local v8, "subId":I
    :goto_0
    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 320
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_1

    const-string v2, "request_by_id"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 322
    const/4 v10, 0x0

    .line 323
    .local v10, "count":I
    move-object/from16 v9, p3

    .local v9, "arr$":[Ljava/lang/String;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v15, :cond_8

    aget-object v12, v9, v11

    .line 324
    .local v12, "id":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 325
    .local v13, "index":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2, v8}, Lcom/android/internal/telephony/meizu/MzIccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    add-int/lit8 v10, v10, 0x1

    .line 323
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 299
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v10    # "count":I
    .end local v11    # "i$":I
    .end local v12    # "id":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v15    # "len$":I
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 300
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    .line 301
    .restart local v8    # "subId":I
    goto :goto_0

    .line 304
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 305
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    .line 306
    .restart local v8    # "subId":I
    goto :goto_0

    .line 309
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 310
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    .line 311
    .restart local v8    # "subId":I
    goto :goto_0

    .line 332
    :cond_1
    const/4 v4, 0x0

    .line 333
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, 0x0

    .line 334
    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 335
    .local v6, "emails":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 337
    .local v7, "pin2":Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 338
    .local v21, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v17, v0

    .line 340
    .local v17, "n":I
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_7

    .line 341
    aget-object v19, v21, v17

    .line 342
    .local v19, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parsing \'"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, "\'"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 344
    const-string v2, "="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 346
    .local v18, "pair":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v2, v0, :cond_3

    .line 347
    const-string v2, "MzIccProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 350
    :cond_3
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 351
    .local v14, "key":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v18, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 353
    .local v22, "val":Ljava/lang/String;
    const-string v2, "tag"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 355
    :cond_4
    const-string v2, "number"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 357
    :cond_5
    const-string v2, "emails"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 359
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 360
    :cond_6
    const-string v2, "pin2"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 365
    .end local v14    # "key":Ljava/lang/String;
    .end local v18    # "pair":[Ljava/lang/String;
    .end local v19    # "param":Ljava/lang/String;
    .end local v22    # "val":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x3

    if-ne v3, v2, :cond_9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 366
    const/4 v10, 0x0

    .line 375
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v7    # "pin2":Ljava/lang/String;
    .end local v17    # "n":I
    .end local v21    # "tokens":[Ljava/lang/String;
    :cond_8
    :goto_3
    return v10

    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "emails":[Ljava/lang/String;
    .restart local v7    # "pin2":Ljava/lang/String;
    .restart local v17    # "n":I
    .restart local v21    # "tokens":[Ljava/lang/String;
    :cond_9
    move-object/from16 v2, p0

    .line 369
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/meizu/MzIccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    .line 370
    .local v20, "success":Z
    if-nez v20, :cond_a

    .line 371
    const/4 v10, 0x0

    goto :goto_3

    .line 374
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 375
    const/4 v10, 0x1

    goto :goto_3

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 23
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 189
    const/4 v8, 0x0

    .line 192
    .local v8, "pin2":Ljava/lang/String;
    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 194
    sget-object v2, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 195
    .local v18, "match":I
    packed-switch v18, :pswitch_data_0

    .line 219
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 198
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 223
    .local v9, "subId":I
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 224
    .local v12, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "number":Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "emailStr":Ljava/lang/String;
    const/16 v19, 0x0

    .line 228
    .local v19, "result":I
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_2

    const-string v2, "request_by_id"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10}, Lcom/android/internal/telephony/meizu/MzIccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "name":Ljava/lang/String;
    const-string v2, "second_number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "additionalNumber":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    move-object v4, v7

    :cond_0
    :goto_1
    move-object/from16 v2, p0

    .line 241
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/meizu/MzIccProvider;->addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://icc/adn/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 283
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "additionalNumber":Ljava/lang/String;
    :goto_2
    return-object v22

    .line 202
    .end local v3    # "efType":I
    .end local v5    # "number":Ljava/lang/String;
    .end local v7    # "emailStr":Ljava/lang/String;
    .end local v9    # "subId":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v19    # "result":I
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 203
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 204
    .restart local v9    # "subId":I
    goto :goto_0

    .line 207
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 208
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 209
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    goto/16 :goto_0

    .line 213
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 214
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 215
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 216
    goto/16 :goto_0

    .line 236
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "additionalNumber":Ljava/lang/String;
    .restart local v7    # "emailStr":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v19    # "result":I
    :cond_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    move-object v4, v6

    goto :goto_1

    .line 246
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "additionalNumber":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move-object v13, v5

    move-object v15, v8

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/telephony/meizu/MzIccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    .line 247
    .local v21, "success":Z
    if-nez v21, :cond_3

    .line 248
    const/16 v22, 0x0

    goto :goto_2

    .line 252
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v17, "buf":Ljava/lang/StringBuilder;
    packed-switch v18, :pswitch_data_1

    .line 272
    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 276
    .local v20, "resultUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v22, v20

    .line 283
    goto :goto_2

    .line 255
    .end local v20    # "resultUri":Landroid/net/Uri;
    :pswitch_4
    const-string v2, "adn/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 259
    :pswitch_5
    const-string v2, "adn/subId/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 263
    :pswitch_6
    const-string v2, "fdn/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 267
    :pswitch_7
    const-string v2, "fdn/subId/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 253
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v10, "query"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_1

    .line 110
    const/4 v10, 0x4

    invoke-static {v10}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 112
    const-string v10, "MzIccreject"

    const-string v11, "MzIcc reject by user"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v10, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 178
    :goto_0
    return-object v9

    .line 116
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Lmeizu/security/FlymePermissionManager;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "callingPkg":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-static {p0, p1, v3}, Landroid/content/ContentProvider$Injector;->isCurentLockApp(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 118
    const-string v10, "MzIccreject"

    const-string v11, "MzIcc reject by access control"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v10, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v3    # "callingPkg":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 125
    .local v9, "results":Landroid/database/Cursor;
    sget-object v10, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    const/16 v11, 0x1f4

    if-ne v10, v11, :cond_2

    .line 126
    iget-object v9, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->locSimContact:Landroid/database/Cursor;

    goto :goto_0

    .line 128
    :cond_2
    sget-object v10, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 181
    :pswitch_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown URL "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 130
    :pswitch_1
    const-string v10, "request_by_id"

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 131
    const/4 v5, 0x0

    .line 132
    .local v5, "ids":[I
    if-eqz p4, :cond_3

    .line 133
    move-object/from16 v0, p4

    array-length v10, v0

    new-array v5, v10, [I

    .line 134
    const/4 v6, 0x0

    .line 135
    .local v6, "index":I
    move-object/from16 v2, p4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v7, v6

    .end local v6    # "index":I
    .local v7, "index":I
    :goto_1
    if-ge v4, v8, :cond_3

    aget-object v1, v2, v4

    .line 136
    .local v1, "arg":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v5, v7

    .line 135
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_1

    .line 139
    .end local v1    # "arg":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "len$":I
    :cond_3
    const/16 v10, 0x6f3a

    iget-object v11, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v10, v5, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEfEx(I[II)Landroid/database/Cursor;

    move-result-object v9

    .line 144
    .end local v5    # "ids":[I
    :goto_2
    iput-object v9, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->locSimContact:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 141
    :cond_4
    const/16 v10, 0x6f3a

    iget-object v11, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_2

    .line 148
    :pswitch_2
    const-string v10, "request_by_id"

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 149
    const/4 v5, 0x0

    .line 150
    .restart local v5    # "ids":[I
    if-eqz p4, :cond_5

    .line 151
    move-object/from16 v0, p4

    array-length v10, v0

    new-array v5, v10, [I

    .line 152
    const/4 v6, 0x0

    .line 153
    .restart local v6    # "index":I
    move-object/from16 v2, p4

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v8, v2

    .restart local v8    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    :goto_3
    if-ge v4, v8, :cond_5

    aget-object v1, v2, v4

    .line 154
    .restart local v1    # "arg":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v5, v7

    .line 153
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_3

    .line 157
    .end local v1    # "arg":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "len$":I
    :cond_5
    const/16 v10, 0x6f3a

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v10, v5, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEfEx(I[II)Landroid/database/Cursor;

    move-result-object v9

    .line 162
    .end local v5    # "ids":[I
    :goto_4
    iput-object v9, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->locSimContact:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 159
    :cond_6
    const/16 v10, 0x6f3a

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_4

    .line 166
    :pswitch_3
    const/16 v10, 0x6f3b

    iget-object v11, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 169
    :pswitch_4
    const/16 v10, 0x6f3b

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 172
    :pswitch_5
    const/16 v10, 0x6f49

    iget-object v11, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 175
    :pswitch_6
    const/16 v10, 0x6f49

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_0

    .line 178
    :pswitch_7
    const/16 v10, 0x6f3a

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/meizu/MzIccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 28
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 381
    const/16 v17, 0x0

    .line 385
    .local v17, "pin2":Ljava/lang/String;
    const-string v2, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 387
    sget-object v2, Lcom/android/internal/telephony/meizu/MzIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v25

    .line 388
    .local v25, "match":I
    packed-switch v25, :pswitch_data_0

    .line 412
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 391
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v10

    .line 416
    .local v10, "subId":I
    :goto_0
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_3

    const-string v2, "request_by_id"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/android/internal/telephony/meizu/MzIccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    .line 418
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, "name":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, "number":Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, "emailStr":Ljava/lang/String;
    const/16 v20, 0x0

    .line 422
    .local v20, "count":I
    move-object/from16 v19, p4

    .local v19, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    aget-object v23, v19, v22

    .line 423
    .local v23, "id":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 424
    .local v8, "index":I
    const-string v2, "second_number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, "additionalNumber":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 428
    move-object v4, v7

    .line 434
    :cond_0
    :goto_2
    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/meizu/MzIccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    add-int/lit8 v20, v20, 0x1

    .line 422
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 395
    .end local v3    # "efType":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "additionalNumber":Ljava/lang/String;
    .end local v7    # "emailStr":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v10    # "subId":I
    .end local v19    # "arr$":[Ljava/lang/String;
    .end local v20    # "count":I
    .end local v22    # "i$":I
    .end local v23    # "id":Ljava/lang/String;
    .end local v24    # "len$":I
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 396
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v10

    .line 397
    .restart local v10    # "subId":I
    goto/16 :goto_0

    .line 400
    .end local v3    # "efType":I
    .end local v10    # "subId":I
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 401
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v10

    .line 402
    .restart local v10    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 403
    goto/16 :goto_0

    .line 406
    .end local v3    # "efType":I
    .end local v10    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 407
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v10

    .line 408
    .restart local v10    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 409
    goto/16 :goto_0

    .line 429
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "additionalNumber":Ljava/lang/String;
    .restart local v7    # "emailStr":Ljava/lang/String;
    .restart local v8    # "index":I
    .restart local v19    # "arr$":[Ljava/lang/String;
    .restart local v20    # "count":I
    .restart local v22    # "i$":I
    .restart local v23    # "id":Ljava/lang/String;
    .restart local v24    # "len$":I
    :cond_2
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    move-object v4, v6

    goto :goto_2

    .line 440
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "additionalNumber":Ljava/lang/String;
    .end local v7    # "emailStr":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v19    # "arr$":[Ljava/lang/String;
    .end local v20    # "count":I
    .end local v22    # "i$":I
    .end local v23    # "id":Ljava/lang/String;
    .end local v24    # "len$":I
    :cond_3
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 441
    .local v13, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    .restart local v5    # "number":Ljava/lang/String;
    const/16 v21, 0x0

    .line 443
    .local v21, "emails":[Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 444
    .local v15, "newTag":Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 445
    .local v16, "newNumber":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "newEmails":[Ljava/lang/String;
    move-object/from16 v11, p0

    move v12, v3

    move-object v14, v5

    move/from16 v18, v10

    .line 447
    invoke-direct/range {v11 .. v18}, Lcom/android/internal/telephony/meizu/MzIccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v27

    .line 450
    .local v27, "success":Z
    if-nez v27, :cond_5

    .line 451
    const/16 v20, 0x0

    .line 455
    .end local v13    # "tag":Ljava/lang/String;
    .end local v15    # "newTag":Ljava/lang/String;
    .end local v16    # "newNumber":Ljava/lang/String;
    .end local v21    # "emails":[Ljava/lang/String;
    .end local v26    # "newEmails":[Ljava/lang/String;
    .end local v27    # "success":Z
    :cond_4
    :goto_3
    return v20

    .line 454
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v15    # "newTag":Ljava/lang/String;
    .restart local v16    # "newNumber":Ljava/lang/String;
    .restart local v21    # "emails":[Ljava/lang/String;
    .restart local v26    # "newEmails":[Ljava/lang/String;
    .restart local v27    # "success":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 455
    const/16 v20, 0x1

    goto :goto_3

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
