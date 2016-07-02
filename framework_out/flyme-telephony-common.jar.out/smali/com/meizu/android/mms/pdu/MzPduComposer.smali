.class public Lcom/meizu/android/mms/pdu/MzPduComposer;
.super Ljava/lang/Object;
.source "MzPduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/android/mms/pdu/MzPduComposer$1;,
        Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;,
        Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;,
        Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOG_TAG:Ljava/lang/String; = "PduComposer"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

.field private mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

.field protected mPosition:I

.field private mProtocol:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-class v1, Lcom/meizu/android/mms/pdu/MzPduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->$assertionsDisabled:Z

    .line 120
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    sget-object v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/android/mms/pdu/MzGenericPdu;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/meizu/android/mms/pdu/MzGenericPdu;

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;-><init>(Landroid/content/Context;Lcom/meizu/android/mms/pdu/MzGenericPdu;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/android/mms/pdu/MzGenericPdu;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .param p3, "Protocol"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 95
    iput-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

    .line 100
    iput v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 105
    iput-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    .line 115
    iput-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mProtocol:I

    .line 145
    iput-object p2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 147
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzGenericPdu;->getPduHeaders()Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .line 148
    new-instance v0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;-><init>(Lcom/meizu/android/mms/pdu/MzPduComposer;Lcom/meizu/android/mms/pdu/MzPduComposer$1;)V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 150
    iput v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 151
    iput p3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mProtocol:I

    .line 152
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/android/mms/pdu/MzPduComposer;)Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/android/mms/pdu/MzPduComposer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 487
    const/4 v2, 0x0

    .line 490
    .local v2, "temp":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 491
    .local v0, "addressType":I
    invoke-static {p1}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->copy(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v2

    .line 492
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 494
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 506
    .end local v0    # "addressType":I
    :goto_1
    return-object v3

    .line 495
    .restart local v0    # "addressType":I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 497
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 502
    .end local v0    # "addressType":I
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 498
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressType":I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 500
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 26
    .param p1, "field"    # I

    .prologue
    .line 513
    packed-switch p1, :pswitch_data_0

    .line 692
    :pswitch_0
    const/16 v24, 0x3

    .line 695
    :goto_0
    return v24

    .line 515
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v23

    .line 518
    .local v23, "version":I
    if-nez v23, :cond_1

    .line 519
    const/16 v24, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    .line 695
    .end local v23    # "version":I
    :cond_0
    :goto_1
    const/16 v24, 0x0

    goto :goto_0

    .line 521
    .restart local v23    # "version":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 528
    .end local v23    # "version":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v22

    .line 529
    .local v22, "textString":[B
    if-nez v22, :cond_2

    .line 530
    const/16 v24, 0x2

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    goto :goto_1

    .line 540
    .end local v22    # "textString":[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v4

    .line 542
    .local v4, "addr":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v4, :cond_3

    .line 543
    const/16 v24, 0x2

    goto :goto_0

    .line 547
    :cond_3
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 548
    aget-object v24, v4, v16

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendAddressType(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v21

    .line 549
    .local v21, "temp":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v21, :cond_4

    .line 550
    const/16 v24, 0x1

    goto :goto_0

    .line 553
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendEncodedString(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 547
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 560
    .end local v4    # "addr":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v16    # "i":I
    .end local v21    # "temp":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v14

    .line 563
    .local v14, "from":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    new-instance v24, Ljava/lang/String;

    invoke-virtual {v14}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    const-string v25, "insert-address-token"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 568
    :cond_5
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 570
    const/16 v24, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    goto/16 :goto_1

    .line 572
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v15

    .line 576
    .local v15, "fstart":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    const/16 v24, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 578
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendAddressType(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v21

    .line 579
    .restart local v21    # "temp":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v21, :cond_7

    .line 580
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 583
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendEncodedString(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 585
    invoke-virtual {v15}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 586
    .local v13, "flen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 587
    int-to-long v0, v13

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendValueLength(J)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 599
    .end local v13    # "flen":I
    .end local v14    # "from":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v15    # "fstart":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v21    # "temp":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v20

    .line 600
    .local v20, "octet":I
    if-nez v20, :cond_8

    .line 601
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 604
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 605
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 609
    .end local v20    # "octet":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 610
    .local v6, "date":J
    const-wide/16 v24, -0x1

    cmp-long v24, v24, v6

    if-nez v24, :cond_9

    .line 611
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 614
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 615
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 619
    .end local v6    # "date":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v8

    .line 621
    .local v8, "enString":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v8, :cond_a

    .line 622
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 625
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 626
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendEncodedString(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    goto/16 :goto_1

    .line 630
    .end local v8    # "enString":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v17

    .line 631
    .local v17, "messageClass":[B
    if-nez v17, :cond_b

    .line 632
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 635
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 636
    const-string v24, "advertisement"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 638
    const/16 v24, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 639
    :cond_c
    const-string v24, "auto"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 641
    const/16 v24, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 642
    :cond_d
    const-string v24, "personal"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 644
    const/16 v24, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 645
    :cond_e
    const-string v24, "informational"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 647
    const/16 v24, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 649
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 654
    .end local v17    # "messageClass":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 655
    .local v5, "contentLocation":[B
    if-nez v5, :cond_10

    .line 656
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 658
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 659
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 663
    .end local v5    # "contentLocation":[B
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v18

    .line 664
    .local v18, "messageSize":J
    const-wide/16 v24, -0x1

    cmp-long v24, v24, v18

    if-nez v24, :cond_11

    .line 665
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 667
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 668
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 672
    .end local v18    # "messageSize":J
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v10

    .line 673
    .local v10, "expiry":J
    const-wide/16 v24, -0x1

    cmp-long v24, v24, v10

    if-nez v24, :cond_12

    .line 674
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 677
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v12

    .line 682
    .local v12, "expiryStart":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    const/16 v24, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 683
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendLongInteger(J)V

    .line 685
    invoke-virtual {v12}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v9

    .line 686
    .local v9, "expiryLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 687
    int-to-long v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendValueLength(J)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 513
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    .line 1560
    if-nez p0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return v0

    .line 1564
    :cond_1
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1566
    const/4 v0, 0x3

    goto :goto_0

    .line 1567
    :cond_2
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1569
    const/4 v0, 0x1

    goto :goto_0

    .line 1570
    :cond_3
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1572
    const/4 v0, 0x2

    goto :goto_0

    .line 1573
    :cond_4
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 935
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 936
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 937
    iput v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 941
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 942
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 945
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 957
    :cond_1
    :goto_0
    return v0

    .line 950
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 955
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move v0, v1

    .line 957
    goto :goto_0
.end method

.method private makeMessageBody()I
    .locals 32

    .prologue
    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v16

    .line 1239
    .local v16, "ctStart":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v29, v0

    const/16 v30, 0x84

    invoke-virtual/range {v29 .. v30}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1240
    .local v10, "contentType":Ljava/lang/String;
    sget-object v29, Lcom/meizu/android/mms/pdu/MzPduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1241
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_1

    .line 1243
    const/16 v29, 0x1

    .line 1419
    :cond_0
    :goto_0
    return v29

    .line 1246
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/meizu/android/mms/pdu/MzSendReq;

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzSendReq;->getBody()Lcom/meizu/android/mms/pdu/MzPduBody;

    move-result-object v5

    .line 1250
    .local v5, "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPartsNum()I

    move-result v29

    if-nez v29, :cond_3

    .line 1252
    :cond_2
    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    .line 1255
    const/16 v29, 0x0

    goto :goto_0

    .line 1260
    :cond_3
    const/16 v29, 0x0

    :try_start_0
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v23

    .line 1262
    .local v23, "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v28

    .line 1263
    .local v28, "start":[B
    if-eqz v28, :cond_4

    .line 1264
    const/16 v29, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1265
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    const/16 v29, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 1266
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 1273
    :cond_4
    :goto_1
    const/16 v29, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1274
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    .end local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v28    # "start":[B
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 1281
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 1282
    int-to-long v0, v15

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendValueLength(J)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    .line 1286
    invoke-virtual {v5}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPartsNum()I

    move-result v27

    .line 1287
    .local v27, "partNum":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    .line 1289
    const-string v29, "PduComposer"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "makeMessageBody(), partNum = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", mProtocol = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mProtocol:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    .line 1292
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v23

    .line 1293
    .restart local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v4

    .line 1296
    .local v4, "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v11

    .line 1299
    .local v11, "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v24

    .line 1301
    .local v24, "partContentType":[B
    if-nez v24, :cond_6

    .line 1303
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1268
    .end local v4    # "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v20    # "i":I
    .end local v24    # "partContentType":[B
    .end local v27    # "partNum":I
    .restart local v28    # "start":[B
    :cond_5
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1276
    .end local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v28    # "start":[B
    :catch_0
    move-exception v18

    .line 1277
    .local v18, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_2

    .line 1307
    .end local v18    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v20    # "i":I
    .restart local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .restart local v24    # "partContentType":[B
    .restart local v27    # "partNum":I
    :cond_6
    sget-object v29, Lcom/meizu/android/mms/pdu/MzPduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1309
    .local v25, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v25, :cond_7

    .line 1310
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 1319
    :goto_4
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v22

    .line 1321
    .local v22, "name":[B
    if-nez v22, :cond_8

    .line 1322
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getFilename()[B

    move-result-object v22

    .line 1324
    if-nez v22, :cond_8

    .line 1325
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v22

    .line 1327
    if-nez v22, :cond_8

    .line 1331
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1312
    .end local v22    # "name":[B
    :cond_7
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    goto :goto_4

    .line 1335
    .restart local v22    # "name":[B
    :cond_8
    const/16 v29, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1336
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 1339
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getCharset()I

    move-result v7

    .line 1340
    .local v7, "charset":I
    if-eqz v7, :cond_9

    .line 1341
    const/16 v29, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1342
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    .line 1345
    :cond_9
    invoke-virtual {v11}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1346
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 1347
    int-to-long v0, v13

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendValueLength(J)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    .line 1351
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v8

    .line 1353
    .local v8, "contentId":[B
    if-eqz v8, :cond_a

    .line 1354
    const/16 v29, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1355
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    const/16 v29, 0x3e

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 1356
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendQuotedString([B)V

    .line 1363
    :cond_a
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v9

    .line 1364
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_b

    .line 1365
    const/16 v29, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1366
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 1370
    :cond_b
    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1372
    .local v19, "headerLength":I
    const/16 v17, 0x0

    .line 1373
    .local v17, "dataLength":I
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getData()[B

    move-result-object v26

    .line 1375
    .local v26, "partData":[B
    const-string v30, "PduComposer"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "contentType = "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, "---(partData != null) = "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-eqz v26, :cond_e

    const/16 v29, 0x1

    :goto_6
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    if-eqz v26, :cond_f

    .line 1378
    const/16 v29, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->arraycopy([BII)V

    .line 1379
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1409
    :cond_c
    :goto_7
    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v29

    sub-int v29, v29, v19

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    .line 1410
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "BUG: Length sanity check failed"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1358
    .end local v9    # "contentLocation":[B
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v26    # "partData":[B
    :cond_d
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1375
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v26    # "partData":[B
    :cond_e
    const/16 v29, 0x0

    goto :goto_6

    .line 1380
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mProtocol:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mProtocol:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_c

    .line 1383
    const/4 v14, 0x0

    .line 1385
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v29, 0x400

    :try_start_2
    move/from16 v0, v29

    new-array v6, v0, [B

    .line 1386
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1387
    const/16 v21, 0x0

    .line 1388
    .local v21, "len":I
    :goto_8
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1391
    add-int v17, v17, v21

    goto :goto_8

    .line 1400
    :cond_10
    if-eqz v14, :cond_c

    .line 1402
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    .line 1403
    :catch_1
    move-exception v29

    goto/16 :goto_7

    .line 1393
    .end local v6    # "buffer":[B
    .end local v21    # "len":I
    :catch_2
    move-exception v18

    .line 1394
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v29, 0x1

    .line 1400
    if-eqz v14, :cond_0

    .line 1402
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1403
    :catch_3
    move-exception v30

    goto/16 :goto_0

    .line 1395
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v18

    .line 1396
    .local v18, "e":Ljava/io/IOException;
    const/16 v29, 0x1

    .line 1400
    if-eqz v14, :cond_0

    .line 1402
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1403
    :catch_5
    move-exception v30

    goto/16 :goto_0

    .line 1397
    .end local v18    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v18

    .line 1398
    .local v18, "e":Ljava/lang/RuntimeException;
    const/16 v29, 0x1

    .line 1400
    if-eqz v14, :cond_0

    .line 1402
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 1403
    :catch_7
    move-exception v30

    goto/16 :goto_0

    .line 1400
    .end local v18    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v29

    if-eqz v14, :cond_11

    .line 1402
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1404
    :cond_11
    :goto_9
    throw v29

    .line 1413
    .end local v14    # "cr":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 1414
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    .line 1415
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    .line 1291
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1419
    .end local v4    # "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v24    # "partContentType":[B
    .end local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v26    # "partData":[B
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 1403
    .restart local v4    # "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .restart local v7    # "charset":I
    .restart local v8    # "contentId":[B
    .restart local v9    # "contentLocation":[B
    .restart local v11    # "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .restart local v13    # "contentTypeLength":I
    .restart local v14    # "cr":Ljava/io/InputStream;
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v22    # "name":[B
    .restart local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .restart local v24    # "partContentType":[B
    .restart local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .restart local v26    # "partData":[B
    :catch_8
    move-exception v30

    goto :goto_9
.end method

.method private makeNotificationInd()I
    .locals 5

    .prologue
    const/16 v4, 0x98

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 783
    iget-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_0

    .line 784
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 785
    iput v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 789
    :cond_0
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 790
    const/16 v3, 0x82

    invoke-virtual {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 793
    invoke-virtual {p0, v4}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 794
    iget-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-virtual {v3, v4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 795
    .local v0, "trid":[B
    if-nez v0, :cond_1

    .line 797
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transaction-ID is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 799
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 802
    const/16 v3, 0x8d

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 840
    :cond_2
    :goto_0
    return v1

    .line 807
    :cond_3
    const/16 v3, 0x85

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 810
    const/16 v3, 0x89

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 815
    const/16 v1, 0x96

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 819
    const/16 v1, 0x8a

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 821
    const/16 v1, 0x83

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 823
    const/16 v1, 0x8e

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 826
    const/16 v1, 0x88

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 829
    const/16 v1, 0x8f

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move v1, v2

    .line 840
    goto :goto_0
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 750
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 751
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 752
    iput v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 756
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 757
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 760
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 775
    :cond_1
    :goto_0
    return v0

    .line 765
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 770
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 775
    goto :goto_0
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 702
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 703
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 704
    iput v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 708
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 709
    const/16 v2, 0x87

    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 712
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 743
    :cond_1
    :goto_0
    return v0

    .line 717
    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 722
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 727
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 732
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 735
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 743
    goto :goto_0
.end method

.method private makeRetrieveConfMessageBody()I
    .locals 32

    .prologue
    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v16

    .line 1051
    .local v16, "ctStart":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-object/from16 v29, v0

    const/16 v30, 0x84

    invoke-virtual/range {v29 .. v30}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1052
    .local v10, "contentType":Ljava/lang/String;
    sget-object v29, Lcom/meizu/android/mms/pdu/MzPduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1053
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_0

    .line 1055
    const/16 v29, 0x1

    .line 1225
    :goto_0
    return v29

    .line 1058
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/meizu/android/mms/pdu/MzRetrieveConf;

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->getBody()Lcom/meizu/android/mms/pdu/MzPduBody;

    move-result-object v5

    .line 1062
    .local v5, "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPartsNum()I

    move-result v29

    if-nez v29, :cond_2

    .line 1064
    :cond_1
    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    .line 1067
    const/16 v29, 0x0

    goto :goto_0

    .line 1072
    :cond_2
    const/16 v29, 0x0

    :try_start_0
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v23

    .line 1074
    .local v23, "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v28

    .line 1075
    .local v28, "start":[B
    if-eqz v28, :cond_3

    .line 1076
    const/16 v29, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1077
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/16 v29, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 1078
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 1085
    :cond_3
    :goto_1
    const/16 v29, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1086
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .end local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v28    # "start":[B
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 1093
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 1094
    int-to-long v0, v15

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendValueLength(J)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    .line 1098
    invoke-virtual {v5}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPartsNum()I

    move-result v27

    .line 1099
    .local v27, "partNum":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    .line 1101
    const-string v29, "PduComposer"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "makeMessageBody(), partNum = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", mProtocol = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mProtocol:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 1104
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v23

    .line 1105
    .restart local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v4

    .line 1108
    .local v4, "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v11

    .line 1111
    .local v11, "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v24

    .line 1112
    .local v24, "partContentType":[B
    if-nez v24, :cond_5

    .line 1114
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1080
    .end local v4    # "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v20    # "i":I
    .end local v24    # "partContentType":[B
    .end local v27    # "partNum":I
    .restart local v28    # "start":[B
    :cond_4
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1088
    .end local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v28    # "start":[B
    :catch_0
    move-exception v18

    .line 1089
    .local v18, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_2

    .line 1118
    .end local v18    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v20    # "i":I
    .restart local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .restart local v24    # "partContentType":[B
    .restart local v27    # "partNum":I
    :cond_5
    sget-object v29, Lcom/meizu/android/mms/pdu/MzPduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1120
    .local v25, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v25, :cond_c

    .line 1121
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 1130
    :goto_4
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v22

    .line 1132
    .local v22, "name":[B
    if-nez v22, :cond_6

    .line 1133
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getFilename()[B

    move-result-object v22

    .line 1135
    if-nez v22, :cond_6

    .line 1136
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v22

    .line 1137
    if-nez v22, :cond_6

    .line 1145
    :cond_6
    const-string v29, "PduComposer"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " part name is : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    if-eqz v22, :cond_7

    .line 1147
    const/16 v29, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1148
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 1152
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getCharset()I

    move-result v7

    .line 1153
    .local v7, "charset":I
    if-eqz v7, :cond_8

    .line 1154
    const/16 v29, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1155
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    .line 1158
    :cond_8
    invoke-virtual {v11}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1159
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 1160
    int-to-long v0, v13

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendValueLength(J)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    .line 1164
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v8

    .line 1166
    .local v8, "contentId":[B
    if-eqz v8, :cond_9

    .line 1167
    const/16 v29, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1168
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    const/16 v29, 0x3e

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 1169
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendQuotedString([B)V

    .line 1176
    :cond_9
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v9

    .line 1177
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_a

    .line 1178
    const/16 v29, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1179
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 1183
    :cond_a
    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1185
    .local v19, "headerLength":I
    const/16 v17, 0x0

    .line 1186
    .local v17, "dataLength":I
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getData()[B

    move-result-object v26

    .line 1188
    .local v26, "partData":[B
    const-string v30, "PduComposer"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "contentType = "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, "---(partData != null) = "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-eqz v26, :cond_e

    const/16 v29, 0x1

    :goto_6
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    if-eqz v26, :cond_f

    .line 1191
    const/16 v29, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->arraycopy([BII)V

    .line 1192
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1215
    :cond_b
    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v29

    sub-int v29, v29, v19

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1216
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "BUG: Length sanity check failed"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1123
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v26    # "partData":[B
    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    goto/16 :goto_4

    .line 1171
    .restart local v7    # "charset":I
    .restart local v8    # "contentId":[B
    .restart local v13    # "contentTypeLength":I
    .restart local v22    # "name":[B
    :cond_d
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1188
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v26    # "partData":[B
    :cond_e
    const/16 v29, 0x0

    goto :goto_6

    .line 1193
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mProtocol:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mProtocol:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    .line 1198
    const/16 v29, 0x400

    :try_start_2
    move/from16 v0, v29

    new-array v6, v0, [B

    .line 1199
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1200
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 1201
    .local v21, "len":I
    :goto_7
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1204
    add-int v17, v17, v21

    goto :goto_7

    .line 1206
    .end local v6    # "buffer":[B
    .end local v14    # "cr":Ljava/io/InputStream;
    .end local v21    # "len":I
    :catch_1
    move-exception v18

    .line 1207
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1208
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v18

    .line 1209
    .local v18, "e":Ljava/io/IOException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1210
    .end local v18    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v18

    .line 1211
    .local v18, "e":Ljava/lang/RuntimeException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1219
    .end local v18    # "e":Ljava/lang/RuntimeException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 1220
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    .line 1221
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    .line 1103
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1225
    .end local v4    # "attachment":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v24    # "partContentType":[B
    .end local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v26    # "partData":[B
    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method private makeRetrievePdu()I
    .locals 5

    .prologue
    const/16 v4, 0x98

    const/16 v3, 0x84

    const/4 v1, 0x1

    .line 848
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 849
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 850
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 854
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 855
    invoke-virtual {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 858
    invoke-virtual {p0, v4}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 860
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-virtual {v2, v4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 862
    .local v0, "trid":[B
    if-nez v0, :cond_1

    .line 864
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transaction-ID is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 869
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 928
    :cond_2
    :goto_0
    return v1

    .line 874
    :cond_3
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 877
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 904
    const/16 v1, 0x96

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 908
    const/16 v1, 0x8a

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 910
    const/16 v1, 0x8e

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 916
    const/16 v1, 0x8f

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 922
    const/16 v1, 0x92

    invoke-direct {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 925
    invoke-virtual {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 928
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->makeRetrieveConfMessageBody()I

    move-result v1

    goto :goto_0
.end method

.method private makeSendReqPdu()I
    .locals 5

    .prologue
    const/16 v4, 0x98

    const/4 v2, 0x1

    .line 964
    iget-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_0

    .line 965
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 966
    const/4 v3, 0x0

    iput v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 970
    :cond_0
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 971
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 974
    invoke-virtual {p0, v4}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 976
    iget-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPduHeader:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-virtual {v3, v4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 977
    .local v1, "trid":[B
    if-nez v1, :cond_1

    .line 979
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 981
    :cond_1
    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 984
    const/16 v3, 0x8d

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1041
    :cond_2
    :goto_0
    return v2

    .line 989
    :cond_3
    const/16 v3, 0x85

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 992
    const/16 v3, 0x89

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 996
    const/4 v0, 0x0

    .line 999
    .local v0, "recipient":Z
    const/16 v3, 0x97

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 1000
    const/4 v0, 0x1

    .line 1004
    :cond_4
    const/16 v3, 0x82

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 1005
    const/4 v0, 0x1

    .line 1009
    :cond_5
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 1010
    const/4 v0, 0x1

    .line 1014
    :cond_6
    if-eqz v0, :cond_2

    .line 1019
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 1023
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 1026
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 1029
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 1032
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 1035
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendHeader(I)I

    .line 1038
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendOctet(I)V

    .line 1041
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->makeMessageBody()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    iget v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 229
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendLongInteger(J)V

    .line 429
    return-void
.end method

.method protected appendEncodedString(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 356
    sget-boolean v4, Lcom/meizu/android/mms/pdu/MzPduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 359
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 360
    .local v3, "textString":[B
    if-nez v3, :cond_1

    .line 379
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v4, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->newbuf()V

    .line 370
    iget-object v4, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    move-result-object v2

    .line 372
    .local v2, "start":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortInteger(I)V

    .line 373
    invoke-virtual {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 375
    invoke-virtual {v2}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 376
    .local v1, "len":I
    iget-object v4, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->pop()V

    .line 377
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendValueLength(J)V

    .line 378
    iget-object v4, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 11
    .param p1, "longInt"    # J

    .prologue
    const/16 v8, 0x8

    .line 289
    move-wide v4, p1

    .line 292
    .local v4, "temp":J
    const/4 v2, 0x0

    .local v2, "size":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-ge v2, v8, :cond_0

    .line 293
    ushr-long/2addr v4, v8

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortLength(I)V

    .line 301
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v1, v3, 0x8

    .line 303
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 304
    ushr-long v6, p1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {p0, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 305
    add-int/lit8 v1, v1, -0x8

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 258
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendQuotedString([B)V

    .line 484
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    .prologue
    const/4 v1, 0x0

    .line 466
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 467
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->arraycopy([BII)V

    .line 468
    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 469
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 246
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 247
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 271
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendTextString([B)V

    .line 344
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 322
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 323
    invoke-virtual {p0, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 326
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->arraycopy([BII)V

    .line 327
    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 328
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x7f

    .line 396
    const-wide/16 v2, 0x7f

    .line 398
    .local v2, "max":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 399
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 406
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 407
    mul-int/lit8 v1, v0, 0x7

    ushr-long v4, p1, v1

    .line 408
    .local v4, "temp":J
    and-long/2addr v4, v10

    .line 410
    const-wide/16 v6, 0x80

    or-long/2addr v6, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 412
    add-int/lit8 v0, v0, -0x1

    .line 413
    goto :goto_1

    .line 403
    .end local v4    # "temp":J
    :cond_1
    const/4 v1, 0x7

    shl-long v6, v2, v1

    or-long v2, v6, v10

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_2
    and-long v6, p1, v10

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 416
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 445
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 446
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendShortLength(I)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->append(I)V

    .line 451
    invoke-virtual {p0, p1, p2}, Lcom/meizu/android/mms/pdu/MzPduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 220
    iget v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 221
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

    invoke-virtual {v2}, Lcom/meizu/android/mms/pdu/MzGenericPdu;->getMessageType()I

    move-result v0

    .line 177
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 179
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->makeSendReqPdu()I

    move-result v2

    if-nez v2, :cond_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 184
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->makeNotificationInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->makeNotifyResp()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 194
    :pswitch_4
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->makeRetrievePdu()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 199
    :pswitch_5
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->makeAckInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 204
    :pswitch_6
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer;->makeReadRecInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
