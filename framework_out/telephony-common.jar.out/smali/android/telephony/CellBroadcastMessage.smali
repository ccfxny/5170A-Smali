.class public Landroid/telephony/CellBroadcastMessage;
.super Ljava/lang/Object;
.source "CellBroadcastMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellBroadcastMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_CB_MESSAGE_EXTRA:Ljava/lang/String; = "com.android.cellbroadcastreceiver.SMS_CB_MESSAGE"


# instance fields
.field private final mDeliveryTime:J

.field private mIsRead:Z

.field private final mSmsCbMessage:Landroid/telephony/SmsCbMessage;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Landroid/telephony/CellBroadcastMessage$1;

    invoke-direct {v0}, Landroid/telephony/CellBroadcastMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/CellBroadcastMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/telephony/SmsCbMessage;JZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "message"    # Landroid/telephony/SmsCbMessage;
    .param p3, "deliveryTime"    # J
    .param p5, "isRead"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 91
    iput p1, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 92
    iput-object p2, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 93
    iput-wide p3, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 94
    iput-boolean p5, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 99
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbMessage;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellBroadcastMessage$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellBroadcastMessage$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsCbMessage;)V
    .locals 3
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v2, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 83
    iput-object p1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 85
    iput-boolean v2, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 86
    return-void
.end method

.method public static createFromCursor(Landroid/database/Cursor;)Landroid/telephony/CellBroadcastMessage;
    .locals 44
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    const-string v23, "geo_scope"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 145
    .local v15, "geoScope":I
    const-string v23, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 147
    .local v16, "serialNum":I
    const-string v23, "service_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 149
    .local v18, "category":I
    const-string v23, "language"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 151
    .local v19, "language":Ljava/lang/String;
    const-string v23, "body"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 153
    .local v20, "body":Ljava/lang/String;
    const-string v23, "format"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 155
    .local v14, "format":I
    const-string v23, "priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 159
    .local v21, "priority":I
    const-string v23, "plmn"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 160
    .local v41, "plmnColumn":I
    const/16 v23, -0x1

    move/from16 v0, v41

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_0

    .line 161
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 167
    .local v40, "plmn":Ljava/lang/String;
    :goto_0
    const-string v23, "lac"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 168
    .local v39, "lacColumn":I
    const/16 v23, -0x1

    move/from16 v0, v39

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_1

    .line 169
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 175
    .local v38, "lac":I
    :goto_1
    const-string v23, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 176
    .local v30, "cidColumn":I
    const/16 v23, -0x1

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_2

    .line 177
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 182
    .local v29, "cid":I
    :goto_2
    new-instance v17, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    move/from16 v2, v38

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 185
    .local v17, "location":Landroid/telephony/SmsCbLocation;
    const-string v23, "etws_warning_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 187
    .local v37, "etwsWarningTypeColumn":I
    const/16 v23, -0x1

    move/from16 v0, v37

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_3

    .line 188
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 189
    .local v42, "warningType":I
    new-instance v22, Landroid/telephony/SmsCbEtwsInfo;

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v42

    move/from16 v2, v23

    move/from16 v3, v25

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZ[B)V

    .line 195
    .end local v42    # "warningType":I
    .local v22, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    :goto_3
    const-string v23, "cmas_message_class"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 197
    .local v33, "cmasMessageClassColumn":I
    const/16 v23, -0x1

    move/from16 v0, v33

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_9

    .line 198
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 201
    .local v7, "messageClass":I
    const-string v23, "cmas_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 203
    .local v31, "cmasCategoryColumn":I
    const/16 v23, -0x1

    move/from16 v0, v31

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_4

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 210
    .local v8, "cmasCategory":I
    :goto_4
    const-string v23, "cmas_response_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 212
    .local v34, "cmasResponseTypeColumn":I
    const/16 v23, -0x1

    move/from16 v0, v34

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_5

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 219
    .local v9, "responseType":I
    :goto_5
    const-string v23, "cmas_severity"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 221
    .local v35, "cmasSeverityColumn":I
    const/16 v23, -0x1

    move/from16 v0, v35

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_6

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 228
    .local v10, "severity":I
    :goto_6
    const-string v23, "cmas_urgency"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 230
    .local v36, "cmasUrgencyColumn":I
    const/16 v23, -0x1

    move/from16 v0, v36

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_7

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 237
    .local v11, "urgency":I
    :goto_7
    const-string v23, "cmas_certainty"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 239
    .local v32, "cmasCertaintyColumn":I
    const/16 v23, -0x1

    move/from16 v0, v32

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_8

    .line 240
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 245
    .local v12, "certainty":I
    :goto_8
    new-instance v6, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v6 .. v12}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    .line 251
    .end local v7    # "messageClass":I
    .end local v8    # "cmasCategory":I
    .end local v9    # "responseType":I
    .end local v10    # "severity":I
    .end local v11    # "urgency":I
    .end local v12    # "certainty":I
    .end local v31    # "cmasCategoryColumn":I
    .end local v32    # "cmasCertaintyColumn":I
    .end local v34    # "cmasResponseTypeColumn":I
    .end local v35    # "cmasSeverityColumn":I
    .end local v36    # "cmasUrgencyColumn":I
    .local v6, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    :goto_9
    new-instance v13, Landroid/telephony/SmsCbMessage;

    move-object/from16 v23, v6

    invoke-direct/range {v13 .. v23}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    .line 254
    .local v13, "msg":Landroid/telephony/SmsCbMessage;
    const-string v23, "date"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 256
    .local v26, "deliveryTime":J
    const-string v23, "read"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_a

    const/16 v28, 0x1

    .line 260
    .local v28, "isRead":Z
    :goto_a
    const-string v23, "sub_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 263
    .local v24, "subId":I
    new-instance v23, Landroid/telephony/CellBroadcastMessage;

    move-object/from16 v25, v13

    invoke-direct/range {v23 .. v28}, Landroid/telephony/CellBroadcastMessage;-><init>(ILandroid/telephony/SmsCbMessage;JZ)V

    return-object v23

    .line 163
    .end local v6    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .end local v13    # "msg":Landroid/telephony/SmsCbMessage;
    .end local v17    # "location":Landroid/telephony/SmsCbLocation;
    .end local v22    # "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    .end local v24    # "subId":I
    .end local v26    # "deliveryTime":J
    .end local v28    # "isRead":Z
    .end local v29    # "cid":I
    .end local v30    # "cidColumn":I
    .end local v33    # "cmasMessageClassColumn":I
    .end local v37    # "etwsWarningTypeColumn":I
    .end local v38    # "lac":I
    .end local v39    # "lacColumn":I
    .end local v40    # "plmn":Ljava/lang/String;
    :cond_0
    const/16 v40, 0x0

    .restart local v40    # "plmn":Ljava/lang/String;
    goto/16 :goto_0

    .line 171
    .restart local v39    # "lacColumn":I
    :cond_1
    const/16 v38, -0x1

    .restart local v38    # "lac":I
    goto/16 :goto_1

    .line 179
    .restart local v30    # "cidColumn":I
    :cond_2
    const/16 v29, -0x1

    .restart local v29    # "cid":I
    goto/16 :goto_2

    .line 191
    .restart local v17    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v37    # "etwsWarningTypeColumn":I
    :cond_3
    const/16 v22, 0x0

    .restart local v22    # "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    goto/16 :goto_3

    .line 206
    .restart local v7    # "messageClass":I
    .restart local v31    # "cmasCategoryColumn":I
    .restart local v33    # "cmasMessageClassColumn":I
    :cond_4
    const/4 v8, -0x1

    .restart local v8    # "cmasCategory":I
    goto/16 :goto_4

    .line 215
    .restart local v34    # "cmasResponseTypeColumn":I
    :cond_5
    const/4 v9, -0x1

    .restart local v9    # "responseType":I
    goto/16 :goto_5

    .line 224
    .restart local v35    # "cmasSeverityColumn":I
    :cond_6
    const/4 v10, -0x1

    .restart local v10    # "severity":I
    goto/16 :goto_6

    .line 233
    .restart local v36    # "cmasUrgencyColumn":I
    :cond_7
    const/4 v11, -0x1

    .restart local v11    # "urgency":I
    goto/16 :goto_7

    .line 242
    .restart local v32    # "cmasCertaintyColumn":I
    :cond_8
    const/4 v12, -0x1

    .restart local v12    # "certainty":I
    goto :goto_8

    .line 248
    .end local v7    # "messageClass":I
    .end local v8    # "cmasCategory":I
    .end local v9    # "responseType":I
    .end local v10    # "severity":I
    .end local v11    # "urgency":I
    .end local v12    # "certainty":I
    .end local v31    # "cmasCategoryColumn":I
    .end local v32    # "cmasCertaintyColumn":I
    .end local v34    # "cmasResponseTypeColumn":I
    .end local v35    # "cmasSeverityColumn":I
    .end local v36    # "cmasUrgencyColumn":I
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    goto :goto_9

    .line 256
    .restart local v13    # "msg":Landroid/telephony/SmsCbMessage;
    .restart local v26    # "deliveryTime":J
    :cond_a
    const/16 v28, 0x0

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getCmasMessageClass()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 273
    new-instance v1, Landroid/content/ContentValues;

    const/16 v5, 0x11

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 275
    .local v1, "cv":Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 276
    .local v4, "msg":Landroid/telephony/SmsCbMessage;
    const-string v5, "geo_scope"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getGeographicalScope()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object v3

    .line 278
    .local v3, "location":Landroid/telephony/SmsCbLocation;
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 279
    const-string v5, "plmn"

    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 282
    const-string v5, "lac"

    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v5

    if-eq v5, v7, :cond_2

    .line 285
    const-string v5, "cid"

    invoke-virtual {v3}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    :cond_2
    const-string v5, "serial_number"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v5, "service_category"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v5, "language"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v5, "body"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v5, "date"

    iget-wide v6, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    const-string v5, "read"

    iget-boolean v6, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 293
    const-string v5, "format"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v5, "priority"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    iget-object v5, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v2

    .line 297
    .local v2, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v2, :cond_3

    .line 298
    const-string v5, "etws_warning_type"

    invoke-virtual {v2}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    :cond_3
    iget-object v5, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    .line 302
    .local v0, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    if-eqz v0, :cond_4

    .line 303
    const-string v5, "cmas_message_class"

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v5, "cmas_category"

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getCategory()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v5, "cmas_response_type"

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getResponseType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v5, "cmas_severity"

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getSeverity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v5, "cmas_urgency"

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getUrgency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v5, "cmas_certainty"

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getCertainty()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    :cond_4
    const-string v5, "sub_id"

    iget v6, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    return-object v1
.end method

.method public getDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    const v0, 0x80b11

    .line 449
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-static {p1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeliveryTime()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    return-wide v0
.end method

.method public getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public getSpokenDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    const/16 v0, 0x11

    .line 459
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-static {p1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    return v0
.end method

.method public isCmasMessage()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v0

    return v0
.end method

.method public isEmergencyAlertMessage()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    return v0
.end method

.method public isEtwsEmergencyUserAlert()Z
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    .line 427
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->isEmergencyUserAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEtwsMessage()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result v0

    return v0
.end method

.method public isEtwsPopupAlert()Z
    .locals 2

    .prologue
    .line 416
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    .line 417
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->isPopupAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEtwsTestMessage()Z
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    .line 436
    .local v0, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPublicAlertMessage()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    return v0
.end method

.method public setIsRead(Z)V
    .locals 0
    .param p1, "isRead"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 324
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
