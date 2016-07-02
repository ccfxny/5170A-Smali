.class public Lcom/android/internal/telephony/MzCallerInfo;
.super Lcom/android/internal/telephony/CallerInfo;
.source "MzCallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "MzCallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final VDBG:Z = true

.field private static mCurrentCountryIso:Ljava/lang/String;


# instance fields
.field public PhotoId:J

.field public PhotoUri:Ljava/lang/String;

.field public contactType:I

.field public extAttributes:I

.field public isDirectoryContact:Z

.field public isTimeoutRet:Z

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public orgTag:Ljava/lang/String;

.field public recordType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MzCallerInfo;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->isDirectoryContact:Z

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 64
    iput v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    .line 74
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfo;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/MzCallerInfo;

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-boolean v0, p2, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 690
    .local v6, "username":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 693
    .local v1, "contactRef":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/MzCallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object p2

    .line 694
    const-string v0, "MzCallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contactRef :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "previousResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local v1    # "contactRef":Landroid/net/Uri;
    .end local v6    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static getAllowMemberCIs(Ljava/util/ArrayList;[J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "allowedMemIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;[J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, "allowedMemberCIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    .line 521
    .local v2, "curCI":Lcom/android/internal/telephony/MzCallerInfo;
    move-object v1, p1

    .local v1, "arr$":[J
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v6, v1, v4

    .line 522
    .local v6, "pid":J
    iget-wide v8, v2, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_1

    .line 523
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 527
    .end local v1    # "arr$":[J
    .end local v2    # "curCI":Lcom/android/internal/telephony/MzCallerInfo;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pid":J
    :cond_2
    const-string v8, "MzCallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowedMemberCIs :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-object v0
.end method

.method private static getCallInfosDistinctPersionId(Landroid/net/Uri;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 23
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    const-string v20, "MzCallerInfo"

    const-string v21, "construct callerInfo array from cursor"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v4, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    if-nez p1, :cond_0

    .line 656
    :goto_0
    return-object v4

    .line 573
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 574
    .local v8, "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 575
    .local v7, "count":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v7, v0, :cond_1

    const-string v20, "MzCallerInfo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cursor count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1
    const-string v20, "display_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 578
    .local v11, "nameIndex":I
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/MzCallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v16

    .line 579
    .local v16, "personIdIndex":I
    const-string v20, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 580
    .local v17, "phoneNumberIndex":I
    const-string v20, "label"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 581
    .local v13, "numberLabelIndex":I
    const-string v20, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 582
    .local v14, "numberTypeIndex":I
    const-string v20, "custom_ringtone"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 583
    .local v5, "contactRingtoneUriIndex":I
    const-string v20, "send_to_voicemail"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 584
    .local v19, "shouldSendToVoicemailIndex":I
    const-string v20, "normalized_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 585
    .local v12, "normalizeNumIndex":I
    const-string v20, "organization_note"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 586
    .local v15, "orgTagIndex":I
    const-string v20, "photo_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 587
    .local v2, "PhotoId":I
    const-string v20, "photo_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 588
    .local v3, "PhotoUri":I
    const-string v20, "record_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 589
    .local v18, "recordTypeindex":I
    const-string v20, "contact_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 590
    .local v6, "contactTypeindex":I
    const-string v20, "in_visible_group"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 592
    .local v9, "inVisibleGroupIndex":I
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 593
    new-instance v10, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v10}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    .line 595
    .local v10, "info":Lcom/android/internal/telephony/MzCallerInfo;
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_3

    .line 596
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 599
    :cond_3
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v2, v0, :cond_4

    .line 600
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->PhotoId:J

    .line 603
    :cond_4
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_5

    .line 604
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->PhotoUri:Ljava/lang/String;

    .line 608
    :cond_5
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_6

    .line 609
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 612
    :cond_6
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 613
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    .line 614
    iget-wide v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 617
    iget-wide v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_2
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 623
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 626
    :cond_7
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_c

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 627
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 632
    :goto_3
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_8

    .line 633
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->orgTag:Ljava/lang/String;

    .line 635
    :cond_8
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 636
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 638
    :cond_9
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_a

    .line 639
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 644
    :cond_a
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    iput-boolean v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    .line 646
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    .line 648
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->needUpdate:Z

    .line 649
    iget-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/MzCallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 650
    move-object/from16 v0, p0

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 652
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 619
    :cond_b
    const-string v20, "MzCallerInfo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "person_id column missing for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 629
    :cond_c
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 644
    :cond_d
    const/16 v20, 0x0

    goto :goto_4

    .line 655
    .end local v10    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 85
    new-instance v1, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    .line 86
    .local v1, "info":Lcom/android/internal/telephony/MzCallerInfo;
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->photoResource:I

    .line 87
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 88
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    .line 89
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    .line 90
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 91
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->isCachedPhotoCurrent:Z

    .line 92
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    .line 94
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 95
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 96
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->isDirectoryContact:Z

    .line 99
    const-string v5, "MzCallerInfo"

    const-string v6, "getCallerInfo() based on cursor..."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz p2, :cond_8

    .line 102
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 110
    const-string v5, "display_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "columnIndex":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 112
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 116
    :cond_0
    const-string v5, "number"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 117
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 118
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 122
    :cond_1
    const-string v5, "normalized_number"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 123
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 124
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 128
    :cond_2
    const-string v5, "label"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 129
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 130
    const-string v5, "type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 131
    .local v4, "typeColumnIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 132
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    .line 133
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    .line 134
    iget v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    iget-object v6, v1, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 141
    .end local v4    # "typeColumnIndex":I
    :cond_3
    invoke-static {p1, p2}, Lcom/android/internal/telephony/MzCallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 142
    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    .line 143
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 144
    .local v2, "contactId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_4

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v5

    if-nez v5, :cond_4

    .line 145
    iput-wide v2, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    .line 147
    const-string v5, "MzCallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> got info.contactIdOrZero: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v2    # "contactId":J
    :cond_4
    :goto_0
    const-string v5, "lookup"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 160
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    .line 161
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->lookupKey:Ljava/lang/String;

    .line 165
    :cond_5
    const-string v5, "photo_uri"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 166
    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 167
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 174
    :goto_1
    const-string v5, "custom_ringtone"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 175
    const/4 v5, -0x1

    if-eq v0, v5, :cond_b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 176
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 183
    :goto_2
    const-string v5, "send_to_voicemail"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 184
    const/4 v5, -0x1

    if-eq v0, v5, :cond_c

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    .line 186
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    .line 188
    const-string v5, "record_type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 189
    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    .line 190
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 192
    :cond_6
    const-string v5, "contact_type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 193
    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    .line 194
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 198
    .end local v0    # "columnIndex":I
    :cond_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 199
    const/4 p2, 0x0

    .line 202
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->needUpdate:Z

    .line 203
    iget-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/MzCallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 204
    iput-object p1, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 206
    return-object v1

    .line 152
    .restart local v0    # "columnIndex":I
    :cond_9
    const-string v5, "MzCallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find contact_id column for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    :cond_a
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto :goto_1

    .line 178
    :cond_b
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    .line 184
    :cond_c
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public static getCallerInfoViaNumber(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 12
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 484
    const/4 v7, 0x0

    .line 485
    .local v7, "rejectedReason":I
    const/4 v1, 0x0

    .line 486
    .local v1, "allowedMemIds":[J
    if-eqz p1, :cond_0

    .line 487
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 488
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "call_rejected_type"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 489
    const-string v8, "MzCallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reject reason :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v8, "call_allowed_contact_ids"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 493
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MzCallerInfo;->getCallInfosDistinctPersionId(Landroid/net/Uri;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    .local v3, "candidateArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    const-string v8, "MzCallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "candidateArray :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 496
    new-instance v4, Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/MzCallerInfo;-><init>()V

    .line 497
    .local v4, "ci":Lcom/android/internal/telephony/MzCallerInfo;
    iput v7, v4, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    move-object v5, v4

    .line 515
    .end local v4    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    .local v5, "ci":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 501
    .end local v5    # "ci":Ljava/lang/Object;
    :cond_1
    if-eqz v1, :cond_2

    array-length v8, v1

    if-lez v8, :cond_2

    .line 502
    invoke-static {v3, v1}, Lcom/android/internal/telephony/MzCallerInfo;->getAllowMemberCIs(Ljava/util/ArrayList;[J)Ljava/util/ArrayList;

    move-result-object v0

    .line 503
    .local v0, "allowedMemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_2

    move-object v3, v0

    .line 507
    .end local v0    # "allowedMemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    :cond_2
    invoke-static {v3, p2}, Lcom/android/internal/telephony/MzCallerInfo;->getPerfectMatchCallerInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 508
    .local v6, "perfectMatchArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 509
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MzCallerInfo;

    .line 514
    .restart local v4    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    :goto_1
    iput v7, v4, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    move-object v5, v4

    .line 515
    .restart local v5    # "ci":Ljava/lang/Object;
    goto :goto_0

    .line 510
    .end local v4    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    .end local v5    # "ci":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 511
    invoke-static {v6}, Lcom/android/internal/telephony/MzCallerInfo;->processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v4

    .restart local v4    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    goto :goto_1

    .line 513
    .end local v4    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    :cond_4
    invoke-static {v3}, Lcom/android/internal/telephony/MzCallerInfo;->processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v4

    .restart local v4    # "ci":Lcom/android/internal/telephony/MzCallerInfo;
    goto :goto_1
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 308
    const-string v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 316
    .local v1, "columnName":Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    const-string v3, "MzCallerInfo"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v1, "contact_id"

    .line 342
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 343
    .local v0, "columnIndex":I
    :goto_1
    const-string v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v0

    .line 322
    .end local v0    # "columnIndex":I
    :cond_0
    const-string v3, "content://com.android.contacts/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    const-string v3, "MzCallerInfo"

    const-string v4, "URL path starts with \'contacts\' using contacts._ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v1, "_id"

    goto :goto_0

    .line 327
    :cond_1
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    const-string v3, "MzCallerInfo"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v1, "contact_id"

    goto :goto_0

    .line 333
    :cond_2
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 337
    const-string v3, "MzCallerInfo"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v1, "_id"

    goto :goto_0

    .line 340
    :cond_3
    const-string v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, "countryIso":Ljava/lang/String;
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 431
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 433
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 439
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 440
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 441
    const-string v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    return-object v1

    .line 436
    .restart local v0    # "country":Landroid/location/Country;
    :cond_2
    const-string v3, "MzCallerInfo"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 384
    const-string v7, "MzCallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-object v1

    .line 390
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 391
    .local v6, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    .line 393
    .local v3, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 394
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/MzCallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "countryIso":Ljava/lang/String;
    const/4 v5, 0x0

    .line 397
    .local v5, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 400
    :try_start_0
    const-string v7, "MzCallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' for countryIso \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v6, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 403
    const-string v7, "MzCallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- parsed number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_1
    if-eqz v5, :cond_0

    .line 413
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1, v0, v4, v7, v8}, Landroid/telephony/MzPhoneNumberUtils;->getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "description":Ljava/lang/String;
    const-string v7, "MzCallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- got description: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",countryIso: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",locale:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 404
    .end local v1    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 405
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v7, "MzCallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getPerfectMatchCallerInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, "perfectMatchCIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 534
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_1
    const-string v2, "MzCallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perfectMatchCIs :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-object v1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 210
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 213
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MzCallerInfo;",
            ">;)",
            "Lcom/android/internal/telephony/MzCallerInfo;"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MzCallerInfo;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 545
    :cond_0
    const-string v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "ciArray should not be empty here"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1
    const/4 v0, 0x0

    .line 547
    .local v0, "i":I
    const/4 v1, 0x0

    .line 548
    .local v1, "index":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    .line 549
    .local v2, "info":Lcom/android/internal/telephony/MzCallerInfo;
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 550
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MzCallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 551
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    check-cast v2, Lcom/android/internal/telephony/MzCallerInfo;

    .line 552
    .restart local v2    # "info":Lcom/android/internal/telephony/MzCallerInfo;
    move v1, v0

    .line 556
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 557
    if-ne v0, v1, :cond_4

    .line 556
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_4
    iget-object v3, v2, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MzCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    :goto_3
    iput-object v3, v2, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MzCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 563
    :cond_6
    const-string v3, "MzCallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCallerInfos info :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-object v2
.end method


# virtual methods
.method copyFrom(Lcom/android/internal/telephony/MzCallerInfo;)V
    .locals 2
    .param p1, "ci"    # Lcom/android/internal/telephony/MzCallerInfo;

    .prologue
    .line 448
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 449
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 450
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 451
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->geoDescription:Ljava/lang/String;

    .line 452
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->cnapName:Ljava/lang/String;

    .line 453
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->numberPresentation:I

    .line 454
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->namePresentation:I

    .line 455
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactExists:Z

    .line 456
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 457
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    .line 458
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    .line 459
    iget-wide v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->PhotoId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->PhotoId:J

    .line 460
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->PhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->PhotoUri:Ljava/lang/String;

    .line 461
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->photoResource:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->photoResource:I

    .line 462
    iget-wide v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    iput-wide v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    .line 463
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->needUpdate:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->needUpdate:Z

    .line 464
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactRefUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 466
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 467
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    .line 468
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    .line 470
    iget-object v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 471
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->isCachedPhotoCurrent:Z

    .line 473
    invoke-virtual {p1}, Lcom/android/internal/telephony/MzCallerInfo;->isEmergencyNumber()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->mIsEmergency:Z

    .line 474
    invoke-virtual {p1}, Lcom/android/internal/telephony/MzCallerInfo;->isVoiceMailNumber()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->mIsVoiceMail:Z

    .line 476
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->isTimeoutRet:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->isTimeoutRet:Z

    .line 477
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 478
    iget-boolean v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->isDirectoryContact:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->isDirectoryContact:Z

    .line 479
    iget v0, p1, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->contactType:I

    .line 480
    return-void
.end method

.method public getRejectReason()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    return v0
.end method

.method public isBlackMember()Z
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->extAttributes:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MzCallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 668
    const v0, 0x1040383

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 670
    const v0, 0x108053d

    iput v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->photoResource:I

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->mIsEmergency:Z

    .line 672
    return-object p0
.end method

.method markAsVoiceMail(ILandroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;

    .line 234
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/MzCallerInfo;->mIsVoiceMail:Z

    .line 237
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "voiceMailLabel":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 241
    if-eqz p2, :cond_1

    .line 242
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    const-string v3, "record_type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "columnIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 245
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/MzCallerInfo;->recordType:I

    .line 248
    .end local v0    # "columnIndex":I
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v2    # "voiceMailLabel":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 251
    :catch_0
    move-exception v1

    .line 257
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v3, "MzCallerInfo"

    const-string v4, "Cannot access VoiceMail."

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method markAsVoiceMail(Landroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 228
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 229
    .local v0, "subId":I
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/MzCallerInfo;->markAsVoiceMail(ILandroid/database/Cursor;)Lcom/android/internal/telephony/MzCallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "+"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "011"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    :cond_0
    move-object v0, p2

    .line 375
    .local v0, "number":Ljava/lang/String;
    :goto_0
    const-string v1, "MzCallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGeoDescription() phoneNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fallbackNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {p1, v0}, Lcom/android/internal/telephony/MzCallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->geoDescription:Ljava/lang/String;

    .line 377
    return-void

    .line 372
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    .restart local v0    # "number":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v0    # "number":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_1
.end method
