.class public final Landroid/provider/MzContactsContract;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzContactsContract$MzNetContacts;,
        Landroid/provider/MzContactsContract$MzSpeedDial;,
        Landroid/provider/MzContactsContract$MzAccounts;,
        Landroid/provider/MzContactsContract$MzSpamAddress;,
        Landroid/provider/MzContactsContract$MzIntents;,
        Landroid/provider/MzContactsContract$MzDisplayPhoto;,
        Landroid/provider/MzContactsContract$MzQuickContact;,
        Landroid/provider/MzContactsContract$MzSettings;,
        Landroid/provider/MzContactsContract$MzSettingsColumns;,
        Landroid/provider/MzContactsContract$MzGroups;,
        Landroid/provider/MzContactsContract$MzGroupsColumns;,
        Landroid/provider/MzContactsContract$MzCommonDataKinds;,
        Landroid/provider/MzContactsContract$MzSearchSnippetColumns;,
        Landroid/provider/MzContactsContract$MzPhoneLookup;,
        Landroid/provider/MzContactsContract$MzData;,
        Landroid/provider/MzContactsContract$MzRawContactColumns;,
        Landroid/provider/MzContactsContract$MzContacts;,
        Landroid/provider/MzContactsContract$MzContactColumns;,
        Landroid/provider/MzContactsContract$MzContactOptionsColumns;,
        Landroid/provider/MzContactsContract$MzDirectory;
    }
.end annotation


# static fields
.field public static final ALLOW_CALLLOGS_PARAM_KEY:Ljava/lang/String; = "allow_calllogs"

.field public static final AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

.field public static final HAS_MORE_KEY:Ljava/lang/String; = "has_more"

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final START_PARAM_KEY:Ljava/lang/String; = "start"

.field public static final USE_WEIGHT_ORDER:Ljava/lang/String; = "use_weight_order"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "content://com.android.contacts.notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    .line 1071
    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    return-void
.end method

.method private static MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/provider/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1086
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1090
    :cond_0
    return-void
.end method

.method public static snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;
    .locals 30
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "snippetStartMatch"    # C
    .param p4, "snippetEndMatch"    # C
    .param p5, "snippetEllipsis"    # Ljava/lang/String;
    .param p6, "snippetMaxTokens"    # I

    .prologue
    .line 973
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 974
    .local v14, "lowerQuery":Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 976
    :cond_0
    const/16 v25, 0x0

    .line 1062
    :goto_1
    return-object v25

    .line 973
    .end local v14    # "lowerQuery":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 982
    .restart local v14    # "lowerQuery":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 983
    .local v13, "lowerDisplayName":Ljava/lang/String;
    :goto_2
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v20, "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 985
    .local v19, "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 986
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 987
    .local v18, "nameToken":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 988
    const/16 v25, 0x0

    goto :goto_1

    .line 982
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "lowerDisplayName":Ljava/lang/String;
    .end local v18    # "nameToken":Ljava/lang/String;
    .end local v19    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v13, ""

    goto :goto_2

    .line 992
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v13    # "lowerDisplayName":Ljava/lang/String;
    .restart local v19    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string v25, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 995
    .local v6, "contentLines":[Ljava/lang/String;
    move-object v4, v6

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v11, :cond_e

    aget-object v5, v4, v9

    .line 996
    .local v5, "contentLine":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 1000
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v12, "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v24, "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, v24

    invoke-static {v5, v12, v0}, Landroid/provider/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1007
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v17, "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, -0x1

    .line 1010
    .local v7, "firstToken":I
    const/4 v10, -0x1

    .line 1011
    .local v10, "lastToken":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v8, v0, :cond_8

    .line 1012
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1013
    .local v23, "token":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1014
    .local v15, "lowerToken":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1018
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_6

    .line 1024
    const/16 v25, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    sub-int v26, v8, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1028
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v26

    add-int v26, v26, v7

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1011
    :cond_6
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1033
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1038
    .end local v15    # "lowerToken":Ljava/lang/String;
    .end local v23    # "token":Ljava/lang/String;
    :cond_8
    const/16 v25, -0x1

    move/from16 v0, v25

    if-le v7, v0, :cond_d

    .line 1039
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    .local v22, "sb":Ljava/lang/StringBuilder;
    if-lez v7, :cond_9

    .line 1041
    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_9
    move v8, v7

    :goto_6
    if-ge v8, v10, :cond_b

    .line 1044
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1045
    .local v16, "markedToken":Ljava/lang/String;
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1046
    .local v21, "originalToken":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    add-int/lit8 v25, v10, -0x1

    move/from16 v0, v25

    if-ge v8, v0, :cond_a

    .line 1050
    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    add-int v26, v26, v25

    add-int/lit8 v25, v8, 0x1

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1055
    .end local v16    # "markedToken":Ljava/lang/String;
    .end local v21    # "originalToken":Ljava/lang/String;
    :cond_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_c

    .line 1056
    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :cond_c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 995
    .end local v7    # "firstToken":I
    .end local v8    # "i":I
    .end local v10    # "lastToken":I
    .end local v12    # "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1062
    .end local v5    # "contentLine":Ljava/lang/String;
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_1
.end method
