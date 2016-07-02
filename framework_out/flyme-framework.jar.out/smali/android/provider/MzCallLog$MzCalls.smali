.class public Landroid/provider/MzCallLog$MzCalls;
.super Ljava/lang/Object;
.source "MzCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MzCalls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;
    }
.end annotation


# static fields
.field public static final AUTO_RECORD_FAIL_TYPE:I = 0x6

.field public static final AUTO_RECORD_TYPE:I = 0x5

.field public static final CACHED_CONTACTS_ID:Ljava/lang/String; = "contactsid"

.field public static final CACHED_MIN_MATCH:Ljava/lang/String; = "min_match"

.field public static final CALL_LOG_GROUP_KEY:Ljava/lang/String; = "group_key"

.field public static final CALL_TYPE:Ljava/lang/String; = "calltype"

.field public static final CALL_TYPE_FREE_CALL:I = 0x64

.field public static final CALL_TYPE_NORMAL:I = 0x0

.field public static final CALL_TYPE_SIP:I = 0x1

.field public static final CALL_UUID:Ljava/lang/String; = "uuid"

.field public static final CONTENT_DISTINC_URI:Landroid/net/Uri;

.field public static final CONTENT_DISTINC_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_SPEED_DIDL_URI:Landroid/net/Uri;

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DEFINE_OF_ONE_RINGING_IN_SECOND:J = 0x5L

.field public static final EXT_TYPE:Ljava/lang/String; = "ext_type"

.field public static final EXT_TYPE_NORMAL:I = 0x0

.field public static final EXT_TYPE_SPAM:I = 0x1

.field public static final ICC_ID:Ljava/lang/String; = "iccid"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final NET_TYPE:Ljava/lang/String; = "net_type"

.field public static final NET_TYPE_MOBILE:I = 0x2

.field public static final NET_TYPE_NORMAL:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x1

.field public static final NEW_SPAM_CALL:Ljava/lang/String; = "new_spam_call"

.field public static final RECORD_UUID:Ljava/lang/String; = "record_uuid"

.field public static final REJECT_TYPE:Ljava/lang/String; = "rejecttype"

.field public static final REJECT_TYPE_BLACK:I = 0x3

.field public static final REJECT_TYPE_CLOUD_ADDRESS:I = 0x6

.field public static final REJECT_TYPE_CUSTOMER_ADDRESS:I = 0x5

.field public static final REJECT_TYPE_NORMAL:I = 0x1

.field public static final REJECT_TYPE_OUT_PHONEBOOK:I = 0x4

.field public static final REJECT_TYPE_USER:I = 0x2

.field public static final SELECTION_MISSED_CALL:Ljava/lang/String; = "type=3 AND (is_read=0 OR is_read IS NULL)"

.field public static final SELECTION_MISSED_CALL_IGORE_ONE_RINGING:Ljava/lang/String; = "type=3 AND (is_read=0 OR is_read IS NULL) AND duration>=5"

.field public static final SELECTION_MISSED_CALL_SCREEN_LOCK:Ljava/lang/String; = "(type=3 AND (is_read=0 OR is_read IS NULL) AND duration>=5) OR (type=6 AND (is_read=0 OR is_read IS NULL))"

.field public static final SELECTION_MISSED_CALL_WITH_RECORD_FAIL:Ljava/lang/String; = "(type=6 OR type=3) AND (is_read=0 OR is_read IS NULL)"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SPAM_ADDRESS_SYNC1:Ljava/lang/String; = "sync1"

.field public static final SPEED_DIAL_DELETED:Ljava/lang/String; = "speed_dial_delete"

.field public static final USE_FREQUENCY:Ljava/lang/String; = "use_frequency"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    const-string v0, "content://call_log/calls/distinc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_DISTINC_URI:Landroid/net/Uri;

    .line 173
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 183
    sget-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_DISTINC_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_DISTINC_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 192
    const-string v0, "content://call_log/calls/speed/dial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_SPEED_DIDL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/provider/MzCallLog$MzCalls$MzCalllogInfo;)Landroid/net/Uri;
    .locals 33
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z
    .param p12, "calllogInfo"    # Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;

    .prologue
    .line 857
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 858
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/16 v20, 0x1

    .line 865
    .local v20, "numberPresentation":I
    const/4 v7, 0x2

    move/from16 v0, p3

    if-ne v0, v7, :cond_9

    .line 866
    const/16 v20, 0x2

    .line 873
    :cond_0
    :goto_0
    const/4 v7, 0x1

    move/from16 v0, v20

    if-eq v0, v7, :cond_1

    .line 874
    const-string p2, ""

    .line 875
    if-eqz p0, :cond_1

    .line 876
    const-string v7, ""

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 881
    :cond_1
    const/4 v12, 0x0

    .line 882
    .local v12, "accountComponentString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 883
    .local v13, "accountId":Ljava/lang/String;
    if-eqz p6, :cond_2

    .line 884
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 885
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v13

    .line 888
    :cond_2
    new-instance v28, Landroid/content/ContentValues;

    const/4 v7, 0x6

    move-object/from16 v0, v28

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 889
    .local v28, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p12

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MzCallLog$MzCalls;->getCalllogValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;)Landroid/content/ContentValues;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 890
    const-string v7, "number"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v7, "presentation"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    const-string v7, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    const-string v7, "features"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 894
    const-string v7, "date"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 895
    const-string v7, "duration"

    move/from16 v0, p9

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 896
    if-eqz p10, :cond_3

    .line 897
    const-string v7, "data_usage"

    move-object/from16 v0, v28

    move-object/from16 v1, p10

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 899
    :cond_3
    const-string v7, "subscription_component_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v7, "subscription_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v7, "new"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    const/4 v7, 0x3

    move/from16 v0, p4

    if-ne v0, v7, :cond_4

    .line 903
    const-string v7, "is_read"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    :cond_4
    if-eqz p0, :cond_5

    .line 906
    const-string v7, "name"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v7, "numbertype"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v7, "numberlabel"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_5
    if-eqz p0, :cond_7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_7

    .line 920
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 922
    .local v19, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    const-string v9, "contact_id =? AND data4 =?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v10, v11

    const/4 v11, 0x1

    aput-object v19, v10, v11

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 946
    .end local v19    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v16, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v16, :cond_7

    .line 948
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 949
    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 950
    .local v17, "dataId":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v6, v0}, Landroid/provider/MzCallLog$MzCalls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 951
    const/16 v7, 0x2710

    move/from16 v0, p9

    if-lt v0, v7, :cond_6

    const/4 v7, 0x2

    move/from16 v0, p4

    if-ne v0, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 954
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v6, v1, v2}, Landroid/provider/MzCallLog$MzCalls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    .end local v17    # "dataId":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 963
    .end local v16    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/16 v22, 0x0

    .line 965
    .local v22, "result":Landroid/net/Uri;
    if-eqz p11, :cond_e

    .line 968
    const-string v7, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/UserManager;

    .line 970
    .local v26, "userManager":Landroid/os/UserManager;
    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v27

    .line 971
    .local v27, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/os/UserManager;->getUserHandle()I

    move-result v15

    .line 972
    .local v15, "currentUserId":I
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v14

    .line 973
    .local v14, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v14, :cond_f

    .line 974
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/UserInfo;

    .line 975
    .local v24, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v25

    .line 976
    .local v25, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "no_outgoing_calls"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_8

    .line 980
    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v7, v1}, Landroid/provider/MzCallLog$MzCalls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 982
    .local v23, "uri":Landroid/net/Uri;
    move-object/from16 v0, v24

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v15, :cond_8

    .line 983
    move-object/from16 v22, v23

    .line 973
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 867
    .end local v12    # "accountComponentString":Ljava/lang/String;
    .end local v13    # "accountId":Ljava/lang/String;
    .end local v14    # "count":I
    .end local v15    # "currentUserId":I
    .end local v18    # "i":I
    .end local v22    # "result":Landroid/net/Uri;
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    .end local v25    # "userHandle":Landroid/os/UserHandle;
    .end local v26    # "userManager":Landroid/os/UserManager;
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_9
    const/4 v7, 0x4

    move/from16 v0, p3

    if-ne v0, v7, :cond_a

    .line 868
    const/16 v20, 0x4

    goto/16 :goto_0

    .line 869
    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v7, 0x3

    move/from16 v0, p3

    if-ne v0, v7, :cond_0

    .line 871
    :cond_b
    const/16 v20, 0x3

    goto/16 :goto_0

    .line 929
    .restart local v12    # "accountComponentString":Ljava/lang/String;
    .restart local v13    # "accountId":Ljava/lang/String;
    .restart local v28    # "values":Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 930
    .local v21, "phoneNumber":Ljava/lang/String;
    :goto_3
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "search_display_name"

    const-string v9, "false"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    const-string v9, "contact_id =?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v10, v11

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .restart local v16    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v21    # "phoneNumber":Ljava/lang/String;
    :cond_d
    move-object/from16 v21, p2

    .line 929
    goto :goto_3

    .line 958
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v7

    .line 988
    .end local v16    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "result":Landroid/net/Uri;
    :cond_e
    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v7, v1}, Landroid/provider/MzCallLog$MzCalls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 991
    :cond_f
    const/4 v7, 0x3

    move/from16 v0, p4

    if-eq v0, v7, :cond_10

    if-lez p9, :cond_10

    if-eqz p0, :cond_10

    .line 992
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v8, v9, v1}, Landroid/provider/MzCallLog$MzCalls;->updatePrimaryNumber(Landroid/content/Context;JLjava/lang/String;)V

    .line 994
    :cond_10
    const-string v7, "MzCallLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCall()    result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-object v22
.end method

.method public static addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;
    .locals 19
    .param p0, "ci"    # Lcom/android/internal/telephony/MzCallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I

    .prologue
    .line 415
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v18}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;
    .locals 29
    .param p0, "ci"    # Lcom/android/internal/telephony/MzCallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "rejectType"    # I
    .param p9, "sipType"    # I
    .param p10, "tableType"    # I
    .param p11, "dataUsage"    # J
    .param p13, "netType"    # I
    .param p14, "recordUUID"    # J
    .param p16, "simId"    # I
    .param p17, "imsi"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 582
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v19, 0x1

    .line 592
    .local v19, "numberPresentation":I
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    .line 593
    const/16 v19, 0x2

    .line 594
    const-string p2, "-2"

    .line 603
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_1

    .line 604
    if-eqz p0, :cond_1

    .line 605
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    .line 613
    :cond_1
    const-wide/16 v10, 0x0

    .line 614
    .local v10, "contactIdOrZero":J
    const/16 v23, 0x1

    .line 615
    .local v23, "timeOut":Z
    const/4 v15, 0x1

    .line 616
    .local v15, "isEmergency":Z
    const/16 v16, 0x1

    .line 617
    .local v16, "isVoiceMailNumber":Z
    const/4 v14, 0x0

    .line 618
    .local v14, "geoLocation":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 619
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    .line 620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MzCallerInfo;->isTimeoutRet:Z

    move/from16 v23, v0

    .line 621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/MzCallerInfo;->geoDescription:Ljava/lang/String;

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MzCallerInfo;->isEmergencyNumber()Z

    move-result v15

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MzCallerInfo;->isVoiceMailNumber()Z

    move-result v16

    .line 625
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MzCallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 639
    .local v17, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =? AND data4 =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 664
    .end local v17    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v12, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v12, :cond_3

    .line 666
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 667
    sget-object v3, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "call"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 674
    .local v13, "feedbackUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v13, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    .end local v13    # "feedbackUri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 683
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-nez v15, :cond_4

    if-nez v16, :cond_4

    if-eqz v23, :cond_7

    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-nez v3, :cond_7

    .line 685
    :cond_4
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 691
    .local v21, "phonesCursor":Landroid/database/Cursor;
    if-eqz v21, :cond_6

    .line 692
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 693
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 695
    :cond_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 700
    .end local v21    # "phonesCursor":Landroid/database/Cursor;
    :cond_6
    :goto_2
    const-string v3, "MzCallLog"

    const-string v4, "addCall:phone query timeOut"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_7
    new-instance v24, Landroid/content/ContentValues;

    const/16 v3, 0xf

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 705
    .local v24, "values":Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v3, "presentation"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    const-string v3, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    const-string v3, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    const-string v3, "duration"

    move/from16 v0, p7

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 711
    const-string v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    const-string v3, "rejecttype"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    const-string v3, "calltype"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    const-string v3, "ext_type"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    const-string v3, "geocoded_location"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v3, "data_usage"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    const-string v3, "net_type"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    const-string v3, "record_uuid"

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 720
    const-string v3, "simid"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    invoke-static/range {p17 .. p17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 722
    const-string v3, "imsi"

    move-object/from16 v0, v24

    move-object/from16 v1, p17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_8
    const-string v3, "contactsid"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 744
    if-eqz p0, :cond_a

    .line 745
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_9

    .line 746
    const-string v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MzCallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_9
    const-string v3, "numbertype"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/MzCallerInfo;->numberType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    const-string v3, "numberlabel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MzCallerInfo;->numberLabel:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-gtz v3, :cond_c

    .line 752
    const/4 v9, 0x0

    .line 754
    .local v9, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "name"

    aput-object v7, v5, v6

    const-string v6, "number=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 761
    if-eqz v9, :cond_b

    .line 762
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 763
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 764
    .local v18, "note":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 765
    const-string v3, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 769
    .end local v18    # "note":Ljava/lang/String;
    :cond_b
    if-eqz v9, :cond_c

    .line 770
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 774
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_c
    if-eqz p0, :cond_d

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_d

    .line 775
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    invoke-static {v2, v4, v5}, Landroid/provider/ContactsContract$Contacts;->markAsContacted(Landroid/content/ContentResolver;J)V

    .line 780
    :cond_d
    const/4 v3, 0x1

    move/from16 v0, p10

    if-ne v0, v3, :cond_15

    .line 781
    const-string v3, "new_spam_call"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    sget-object v3, Landroid/provider/MzCallLog$MzCallsSpam;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 787
    .local v22, "result":Landroid/net/Uri;
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/provider/MzCallLog$MzCalls;->removeExpiredEntries(Landroid/content/Context;)V

    .line 788
    const/4 v3, 0x3

    move/from16 v0, p4

    if-eq v0, v3, :cond_e

    if-lez p7, :cond_e

    .line 789
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v10, v11, v1}, Landroid/provider/MzCallLog$MzCalls;->updatePrimaryNumber(Landroid/content/Context;JLjava/lang/String;)V

    .line 792
    :cond_e
    return-object v22

    .line 595
    .end local v10    # "contactIdOrZero":J
    .end local v14    # "geoLocation":Ljava/lang/String;
    .end local v15    # "isEmergency":Z
    .end local v16    # "isVoiceMailNumber":Z
    .end local v22    # "result":Landroid/net/Uri;
    .end local v23    # "timeOut":Z
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_f
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_10

    .line 596
    const-string p2, "-3"

    .line 597
    const/16 v19, 0x4

    goto/16 :goto_0

    .line 598
    :cond_10
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 600
    :cond_11
    const/16 v19, 0x3

    .line 601
    const-string p2, "-1"

    goto/16 :goto_0

    .line 650
    .restart local v10    # "contactIdOrZero":J
    .restart local v14    # "geoLocation":Ljava/lang/String;
    .restart local v15    # "isEmergency":Z
    .restart local v16    # "isVoiceMailNumber":Z
    .restart local v23    # "timeOut":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MzCallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 652
    .local v20, "phoneNumber":Ljava/lang/String;
    :goto_4
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/MzCallerInfo;->contactIdOrZero:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .restart local v12    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    :cond_13
    move-object/from16 v20, p2

    .line 650
    goto :goto_4

    .line 678
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .line 769
    .end local v12    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v24    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v3

    if-eqz v9, :cond_14

    .line 770
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v3

    .line 784
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_15
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .restart local v22    # "result":Landroid/net/Uri;
    goto :goto_3

    .line 697
    .end local v22    # "result":Landroid/net/Uri;
    .end local v24    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method public static addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIILjava/lang/String;)Landroid/net/Uri;
    .locals 19
    .param p0, "ci"    # Lcom/android/internal/telephony/MzCallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "rejectType"    # I
    .param p9, "sipType"    # I
    .param p10, "simId"    # I
    .param p11, "imsi"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v17, p10

    move-object/from16 v18, p11

    invoke-static/range {v1 .. v18}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJ)Landroid/net/Uri;
    .locals 14
    .param p0, "ci"    # Lcom/android/internal/telephony/MzCallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "rejectType"    # I
    .param p9, "sipType"    # I
    .param p10, "recordUUID"    # J

    .prologue
    .line 528
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v13}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJILjava/lang/String;)Landroid/net/Uri;
    .locals 21
    .param p0, "ci"    # Lcom/android/internal/telephony/MzCallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "rejectType"    # I
    .param p9, "sipType"    # I
    .param p10, "recordUUID"    # J
    .param p12, "simId"    # I
    .param p13, "imsi"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v2, 0x5

    move/from16 v0, p8

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    move/from16 v0, p8

    if-ne v0, v2, :cond_1

    .line 536
    :cond_0
    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v17, p10

    move/from16 v19, p12

    move-object/from16 v20, p13

    invoke-static/range {v3 .. v20}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 539
    :goto_0
    return-object v2

    :cond_1
    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v17, p10

    move/from16 v19, p12

    move-object/from16 v20, p13

    invoke-static/range {v3 .. v20}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1000
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1001
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1002
    .local v1, "result":Landroid/net/Uri;
    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 5000)"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1005
    return-object v1
.end method

.method private static getCalllogValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;)Landroid/content/ContentValues;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p4, "calllogInfo"    # Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;

    .prologue
    .line 1122
    new-instance p1, Landroid/content/ContentValues;

    .end local p1    # "values":Landroid/content/ContentValues;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1123
    .restart local p1    # "values":Landroid/content/ContentValues;
    const-wide/16 v10, 0x0

    .line 1124
    .local v10, "contactIdOrZero":J
    const/16 v16, 0x1

    .line 1125
    .local v16, "timeOut":Z
    const/4 v12, 0x1

    .line 1126
    .local v12, "isEmergency":Z
    const/4 v13, 0x1

    .line 1127
    .local v13, "isVoiceMailNumber":Z
    const/4 v9, 0x0

    .line 1128
    .local v9, "geoLocation":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1129
    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    .line 1130
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 1131
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v12

    .line 1132
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v13

    .line 1134
    :cond_0
    if-eqz p4, :cond_2

    .line 1135
    const-string v2, "rejecttype"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->rejectType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    const-string v2, "calltype"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->sipType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1137
    const-string v2, "ext_type"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->tableType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1138
    const-string v2, "net_type"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->netType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1139
    const-string v2, "record_uuid"

    move-object/from16 v0, p4

    iget-wide v4, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->recordUUID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1140
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->imsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1141
    const-string v2, "imsi"

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->imsi:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_1
    const-string v2, "simid"

    move-object/from16 v0, p4

    iget v3, v0, Landroid/provider/MzCallLog$MzCalls$MzCalllogInfo;->simId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    :cond_2
    const-string v2, "geocoded_location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    if-nez v12, :cond_3

    if-nez v13, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_6

    .line 1149
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1155
    .local v15, "phonesCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_5

    .line 1156
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1157
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1159
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    .end local v15    # "phonesCursor":Landroid/database/Cursor;
    :cond_5
    :goto_0
    const-string v2, "MzCallLog"

    const-string v3, "addCall:phone query timeOut"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_6
    const-string v2, "contactsid"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1167
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_8

    .line 1168
    const/4 v8, 0x0

    .line 1170
    .local v8, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const-string v5, "number=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1177
    if-eqz v8, :cond_7

    .line 1178
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1179
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1180
    .local v14, "note":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1181
    const-string v2, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    .end local v14    # "note":Ljava/lang/String;
    :cond_7
    if-eqz v8, :cond_8

    .line 1186
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1190
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_8
    return-object p1

    .line 1185
    .restart local v8    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_9

    .line 1186
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 1161
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1044
    const/4 v1, 0x0

    .line 1045
    .local v1, "countryIso":Ljava/lang/String;
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 1047
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 1048
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 1049
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1053
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    return-object v1
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1063
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1064
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1066
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const-string v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1072
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1073
    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    if-eqz v6, :cond_1

    .line 1078
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v1

    .line 1075
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1077
    if-eqz v6, :cond_1

    .line 1078
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1077
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 1078
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "contactId"    # J
    .param p2, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 388
    sget-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "contactsid"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static isMobileNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1090
    const-string v5, "country_detector"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 1092
    .local v0, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "countryIso":Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    .line 1094
    .local v4, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v3, 0x0

    .line 1096
    .local v3, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v4, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1100
    :goto_0
    if-eqz v3, :cond_0

    .line 1101
    invoke-virtual {v4, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v5, v6, :cond_0

    .line 1102
    const/4 v5, 0x1

    .line 1105
    :goto_1
    return v5

    .line 1097
    :catch_0
    move-exception v2

    .line 1098
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v5, "MzCallLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDescriptionForNumber: NumberParseException for incoming number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1105
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1083
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1084
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 5000)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1087
    return-void
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1009
    sget-object v1, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "call"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1014
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1015
    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 1023
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    invoke-static {p0}, Landroid/provider/MzCallLog$MzCalls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    invoke-static {p0}, Landroid/provider/MzCallLog$MzCalls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1038
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1039
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updatePrimaryNumber(Landroid/content/Context;JLjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1109
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    invoke-static {p0, p3}, Landroid/provider/MzCallLog$MzCalls;->isMobileNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1112
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "is_primary"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1113
    const-string v2, "is_super_primary"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
