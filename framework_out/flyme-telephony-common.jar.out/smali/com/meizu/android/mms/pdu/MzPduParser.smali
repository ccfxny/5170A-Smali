.class public Lcom/meizu/android/mms/pdu/MzPduParser;
.super Ljava/lang/Object;
.source "MzPduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

.field private mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;

.field private mProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/meizu/android/mms/pdu/MzPduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    .line 79
    sput-object v1, Lcom/meizu/android/mms/pdu/MzPduParser;->mTypeParam:[B

    .line 84
    sput-object v1, Lcom/meizu/android/mms/pdu/MzPduParser;->mStartParam:[B

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "pduDataStream"    # [B

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/android/mms/pdu/MzPduParser;-><init>([BI)V

    .line 117
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "pduDataStream"    # [B
    .param p2, "protocol"    # I

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 69
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .line 74
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mProtocol:I

    .line 105
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 106
    iput p2, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mProtocol:I

    .line 107
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/meizu/android/mms/pdu/MzPduHeaders;)Z
    .locals 40
    .param p0, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 1854
    if-nez p0, :cond_0

    .line 1855
    const/16 v37, 0x0

    .line 2061
    :goto_0
    return v37

    .line 1859
    :cond_0
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v8

    .line 1862
    .local v8, "messageType":I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v9

    .line 1863
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    .line 1865
    const/16 v37, 0x0

    goto :goto_0

    .line 1869
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2058
    const/16 v37, 0x0

    goto :goto_0

    .line 1872
    :pswitch_0
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1873
    .local v34, "srContentType":[B
    if-nez v34, :cond_2

    .line 1874
    const/16 v37, 0x0

    goto :goto_0

    .line 1878
    :cond_2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v35

    .line 1879
    .local v35, "srFrom":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v35, :cond_3

    .line 1880
    const/16 v37, 0x0

    goto :goto_0

    .line 1884
    :cond_3
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 1885
    .local v36, "srTransactionId":[B
    if-nez v36, :cond_15

    .line 1886
    const/16 v37, 0x0

    goto :goto_0

    .line 1892
    .end local v34    # "srContentType":[B
    .end local v35    # "srFrom":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v36    # "srTransactionId":[B
    :pswitch_1
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v32

    .line 1893
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_4

    .line 1894
    const/16 v37, 0x0

    goto :goto_0

    .line 1898
    :cond_4
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1899
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_15

    .line 1900
    const/16 v37, 0x0

    goto :goto_0

    .line 1906
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1907
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_5

    .line 1908
    const/16 v37, 0x0

    goto :goto_0

    .line 1912
    :cond_5
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v12

    .line 1913
    .local v12, "niExpiry":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v12

    if-nez v37, :cond_6

    .line 1914
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1918
    :cond_6
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v11

    .line 1919
    .local v11, "niMessageClass":[B
    if-nez v11, :cond_7

    .line 1920
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1924
    :cond_7
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1925
    .local v14, "niMessageSize":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v14

    if-nez v37, :cond_8

    .line 1926
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1930
    :cond_8
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 1931
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_15

    .line 1932
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1938
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niMessageClass":[B
    .end local v12    # "niExpiry":J
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v17

    .line 1939
    .local v17, "nriStatus":I
    if-nez v17, :cond_9

    .line 1940
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1944
    :cond_9
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 1945
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_15

    .line 1946
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1952
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 1953
    .local v19, "rcContentType":[B
    if-nez v19, :cond_a

    .line 1954
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1958
    :cond_a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 1959
    .local v20, "rcDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v20

    if-nez v37, :cond_15

    .line 1960
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1966
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1967
    .local v4, "diDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v4

    if-nez v37, :cond_b

    .line 1968
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1972
    :cond_b
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1973
    .local v3, "diMessageId":[B
    if-nez v3, :cond_c

    .line 1974
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1978
    :cond_c
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v6

    .line 1979
    .local v6, "diStatus":I
    if-nez v6, :cond_d

    .line 1980
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1984
    :cond_d
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v7

    .line 1985
    .local v7, "diTo":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v7, :cond_15

    .line 1986
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1992
    .end local v3    # "diMessageId":[B
    .end local v4    # "diDate":J
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 1993
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_15

    .line 1994
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2000
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 2001
    .local v22, "roDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v22

    if-nez v37, :cond_e

    .line 2002
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2006
    :cond_e
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v24

    .line 2007
    .local v24, "roFrom":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v24, :cond_f

    .line 2008
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2012
    :cond_f
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 2013
    .local v25, "roMessageId":[B
    if-nez v25, :cond_10

    .line 2014
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2018
    :cond_10
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v26

    .line 2019
    .local v26, "roReadStatus":I
    if-nez v26, :cond_11

    .line 2020
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2024
    :cond_11
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v27

    .line 2025
    .local v27, "roTo":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v27, :cond_15

    .line 2026
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2032
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v28

    .line 2033
    .local v28, "rrFrom":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v28, :cond_12

    .line 2034
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2038
    :cond_12
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2039
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_13

    .line 2040
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2044
    :cond_13
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v30

    .line 2045
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_14

    .line 2046
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2050
    :cond_14
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v31

    .line 2051
    .local v31, "rrTo":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v31, :cond_15

    .line 2052
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2061
    .end local v28    # "rrFrom":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 1869
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/meizu/android/mms/pdu/MzPduPart;)I
    .locals 5
    .param p0, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1818
    sget-boolean v4, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1819
    :cond_0
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduParser;->mTypeParam:[B

    if-nez v4, :cond_2

    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduParser;->mStartParam:[B

    if-nez v4, :cond_2

    .line 1844
    :cond_1
    :goto_0
    return v2

    .line 1825
    :cond_2
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduParser;->mStartParam:[B

    if-eqz v4, :cond_3

    .line 1826
    invoke-virtual {p0}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v0

    .line 1827
    .local v0, "contentId":[B
    if-eqz v0, :cond_3

    .line 1828
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 1829
    goto :goto_0

    .line 1835
    .end local v0    # "contentId":[B
    :cond_3
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduParser;->mTypeParam:[B

    if-eqz v4, :cond_1

    .line 1836
    invoke-virtual {p0}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v1

    .line 1837
    .local v1, "contentType":[B
    if-eqz v1, :cond_1

    .line 1838
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 1839
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1280
    sget-boolean v1, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1281
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1282
    .local v0, "temp":I
    sget-boolean v1, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1283
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v3, -0x1

    .line 1246
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1247
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1248
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1249
    .local v1, "temp":I
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1250
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1252
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1253
    invoke-static {v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1254
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1262
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1263
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1257
    :cond_3
    invoke-static {v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1258
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1266
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1267
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1270
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    .line 1230
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1241
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1234
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1241
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 1186
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1211
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1190
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1211
    const/4 v0, 0x1

    goto :goto_0

    .line 1190
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1006
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1584
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1586
    :cond_0
    const/4 v0, 0x0

    .line 1587
    .local v0, "contentType":[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1588
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1589
    .local v8, "temp":I
    sget-boolean v9, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1590
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1592
    and-int/lit16 v1, v8, 0xff

    .line 1594
    .local v1, "cur":I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_7

    .line 1595
    invoke-static {p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1596
    .local v5, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1597
    .local v7, "startPos":I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1598
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1599
    sget-boolean v9, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    const/4 v9, -0x1

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1600
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1601
    and-int/lit16 v3, v8, 0xff

    .line 1603
    .local v3, "first":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_4

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_4

    .line 1604
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1619
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1620
    .local v2, "endPos":I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1621
    .local v6, "parameterLen":I
    if-lez v6, :cond_3

    .line 1622
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1625
    :cond_3
    if-gez v6, :cond_8

    .line 1626
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    sget-object v9, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1636
    .end local v2    # "endPos":I
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v6    # "parameterLen":I
    .end local v7    # "startPos":I
    :goto_1
    return-object v9

    .line 1605
    .restart local v3    # "first":I
    .restart local v5    # "length":I
    .restart local v7    # "startPos":I
    :cond_4
    const/16 v9, 0x7f

    if-le v3, v9, :cond_6

    .line 1606
    invoke-static {p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1608
    .local v4, "index":I
    sget-object v9, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_5

    .line 1609
    sget-object v9, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1611
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1612
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    .line 1615
    .end local v4    # "index":I
    :cond_6
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    sget-object v9, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_1

    .line 1629
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v7    # "startPos":I
    :cond_7
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_9

    .line 1630
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v9, v0

    .line 1636
    goto :goto_1

    .line 1632
    :cond_9
    sget-object v9, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 20
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1413
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v18, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    if-nez p0, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1414
    :cond_0
    sget-boolean v18, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-gtz v18, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1416
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1417
    .local v15, "startPos":I
    const/16 v16, 0x0

    .line 1418
    .local v16, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1419
    .local v11, "lastLen":I
    :goto_0
    if-lez v11, :cond_c

    .line 1420
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    .line 1421
    .local v13, "param":I
    sget-boolean v18, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_2

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1422
    :cond_2
    add-int/lit8 v11, v11, -0x1

    .line 1424
    sparse-switch v13, :sswitch_data_0

    .line 1555
    const/16 v18, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/meizu/android/mms/pdu/MzPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1556
    const-string v18, "PduParser"

    const-string v19, "Corrupt Content-Type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1440
    :sswitch_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1441
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1442
    .local v8, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1443
    const/16 v18, 0x7f

    move/from16 v0, v18

    if-le v8, v0, :cond_4

    .line 1445
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1447
    .local v10, "index":I
    sget-object v18, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    .line 1448
    sget-object v18, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 1449
    .local v17, "type":[B
    const/16 v18, 0x83

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    .end local v10    # "index":I
    .end local v17    # "type":[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1462
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1463
    goto :goto_0

    .line 1455
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 1456
    .restart local v17    # "type":[B
    if-eqz v17, :cond_3

    if-eqz p1, :cond_3

    .line 1457
    const/16 v18, 0x83

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1480
    .end local v8    # "first":I
    .end local v17    # "type":[B
    :sswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1481
    .local v14, "start":[B
    if-eqz v14, :cond_5

    if-eqz p1, :cond_5

    .line 1482
    const/16 v18, 0x99

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1486
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1487
    goto/16 :goto_0

    .line 1504
    .end local v14    # "start":[B
    :sswitch_2
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1505
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1506
    .local v9, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1508
    const/16 v18, 0x20

    move/from16 v0, v18

    if-le v9, v0, :cond_6

    const/16 v18, 0x7f

    move/from16 v0, v18

    if-lt v9, v0, :cond_7

    :cond_6
    if-nez v9, :cond_9

    .line 1511
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1513
    .local v6, "charsetStr":[B
    :try_start_0
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v18 .. v18}, Lcom/meizu/android/mms/pdu/MzCharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v5

    .line 1515
    .local v5, "charsetInt":I
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    .end local v5    # "charsetInt":I
    .end local v6    # "charsetStr":[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1530
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1531
    goto/16 :goto_0

    .line 1516
    .restart local v6    # "charsetStr":[B
    :catch_0
    move-exception v7

    .line 1518
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string v18, "PduParser"

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1519
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1523
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 1524
    .local v4, "charset":I
    if-eqz p1, :cond_8

    .line 1525
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1543
    .end local v4    # "charset":I
    .end local v9    # "firstValue":I
    :sswitch_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    .line 1544
    .local v12, "name":[B
    if-eqz v12, :cond_a

    if-eqz p1, :cond_a

    .line 1545
    const/16 v18, 0x97

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1549
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1550
    goto/16 :goto_0

    .line 1558
    .end local v12    # "name":[B
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1564
    .end local v13    # "param":I
    :cond_c
    if-eqz v11, :cond_d

    .line 1565
    const-string v18, "PduParser"

    const-string v19, "Corrupt Content-Type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_d
    return-void

    .line 1424
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1082
    sget-boolean v7, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1083
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1084
    const/4 v3, 0x0

    .line 1085
    .local v3, "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    const/4 v0, 0x0

    .line 1086
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1087
    .local v5, "temp":I
    sget-boolean v7, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1088
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 1089
    .local v2, "first":I
    if-nez v2, :cond_2

    .line 1090
    new-instance v7, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 1112
    :goto_0
    return-object v7

    .line 1093
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1094
    const/16 v7, 0x20

    if-ge v2, v7, :cond_3

    .line 1095
    invoke-static {p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1097
    invoke-static {p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1100
    :cond_3
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1103
    .local v6, "textString":[B
    if-eqz v0, :cond_4

    .line 1104
    :try_start_0
    new-instance v4, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>(I[B)V

    .end local v3    # "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .local v4, "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .restart local v3    # "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 1112
    goto :goto_0

    .line 1106
    :cond_4
    new-instance v4, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    invoke-direct {v4, v6}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .restart local v4    # "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .restart local v3    # "returnValue":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    goto :goto_1

    .line 1108
    :catch_0
    move-exception v1

    .line 1109
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1355
    sget-boolean v1, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1356
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1357
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1358
    .local v0, "temp":I
    sget-boolean v1, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1359
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1360
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1361
    invoke-static {p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v2, v1

    .line 1363
    :goto_0
    return-wide v2

    :cond_2
    invoke-static {p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    .line 1323
    sget-boolean v5, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1324
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1325
    .local v4, "temp":I
    sget-boolean v5, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v8, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1326
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1328
    .local v0, "count":I
    if-le v0, v9, :cond_2

    .line 1329
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1332
    :cond_2
    const-wide/16 v2, 0x0

    .line 1334
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1335
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1336
    sget-boolean v5, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v8, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1337
    :cond_3
    shl-long/2addr v2, v9

    .line 1338
    and-int/lit16 v5, v4, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1341
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/meizu/android/mms/pdu/MzPduPart;I)Z
    .locals 20
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;
    .param p2, "length"    # I

    .prologue
    .line 1649
    sget-boolean v17, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p0, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1650
    :cond_0
    sget-boolean v17, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    if-nez p1, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1651
    :cond_1
    sget-boolean v17, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    if-gtz p2, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1669
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 1670
    .local v9, "startPos":I
    const/4 v12, 0x0

    .line 1671
    .local v12, "tempPos":I
    move/from16 v7, p2

    .line 1672
    .local v7, "lastLen":I
    :cond_3
    :goto_0
    if-lez v7, :cond_11

    .line 1673
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1674
    .local v5, "header":I
    sget-boolean v17, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_4

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1675
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 1677
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v5, v0, :cond_d

    .line 1679
    sparse-switch v5, :sswitch_data_0

    .line 1769
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/meizu/android/mms/pdu/MzPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1770
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/16 v17, 0x0

    .line 1807
    .end local v5    # "header":I
    :goto_1
    return v17

    .line 1685
    .restart local v5    # "header":I
    :sswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1686
    .local v4, "contentLocation":[B
    if-eqz v4, :cond_5

    .line 1687
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentLocation([B)V

    .line 1690
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1691
    sub-int v17, v9, v12

    sub-int v7, p2, v17

    .line 1692
    goto :goto_0

    .line 1698
    .end local v4    # "contentLocation":[B
    :sswitch_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1699
    .local v3, "contentId":[B
    if-eqz v3, :cond_6

    .line 1700
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentId([B)V

    .line 1703
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1704
    sub-int v17, v9, v12

    sub-int v7, p2, v17

    .line 1705
    goto :goto_0

    .line 1721
    .end local v3    # "contentId":[B
    :sswitch_2
    const/4 v2, 0x1

    .line 1723
    .local v2, "contentDisposition":Z
    if-eqz v2, :cond_3

    .line 1724
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1725
    .local v8, "len":I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1726
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1727
    .local v15, "thisStartPos":I
    const/4 v14, 0x0

    .line 1728
    .local v14, "thisEndPos":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    .line 1730
    .local v16, "value":I
    const/16 v17, 0x80

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1731
    sget-object v17, Lcom/meizu/android/mms/pdu/MzPduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentDisposition([B)V

    .line 1744
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1745
    sub-int v17, v15, v14

    move/from16 v0, v17

    if-ge v0, v8, :cond_8

    .line 1746
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    .line 1747
    const/16 v17, 0x98

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1748
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setFilename([B)V

    .line 1753
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1754
    sub-int v17, v15, v14

    move/from16 v0, v17

    if-ge v0, v8, :cond_8

    .line 1755
    sub-int v17, v15, v14

    sub-int v6, v8, v17

    .line 1756
    .local v6, "last":I
    new-array v10, v6, [B

    .line 1757
    .local v10, "temp":[B
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1761
    .end local v6    # "last":I
    .end local v10    # "temp":[B
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1762
    sub-int v17, v9, v12

    sub-int v7, p2, v17

    .line 1763
    goto/16 :goto_0

    .line 1732
    :cond_9
    const/16 v17, 0x81

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1733
    sget-object v17, Lcom/meizu/android/mms/pdu/MzPduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1734
    :cond_a
    const/16 v17, 0x82

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1735
    sget-object v17, Lcom/meizu/android/mms/pdu/MzPduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1737
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1739
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentDisposition([B)V

    goto/16 :goto_2

    .line 1773
    .end local v2    # "contentDisposition":Z
    .end local v8    # "len":I
    .end local v14    # "thisEndPos":I
    .end local v15    # "thisStartPos":I
    .end local v16    # "value":I
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1776
    :cond_d
    const/16 v17, 0x20

    move/from16 v0, v17

    if-lt v5, v0, :cond_f

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-gt v5, v0, :cond_f

    .line 1778
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1779
    .local v11, "tempHeader":[B
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1782
    .local v13, "tempValue":[B
    const/16 v17, 0x1

    const-string v18, "Content-Transfer-Encoding"

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1784
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentTransferEncoding([B)V

    .line 1787
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1788
    sub-int v17, v9, v12

    sub-int v7, p2, v17

    .line 1789
    goto/16 :goto_0

    .line 1794
    .end local v11    # "tempHeader":[B
    .end local v13    # "tempValue":[B
    :cond_f
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/meizu/android/mms/pdu/MzPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1795
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1798
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1802
    .end local v5    # "header":I
    :cond_11
    if-eqz v7, :cond_12

    .line 1803
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1807
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1679
    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzPduBody;
    .locals 25
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 883
    if-nez p0, :cond_1

    .line 884
    const/4 v4, 0x0

    .line 994
    :cond_0
    :goto_0
    return-object v4

    .line 887
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 888
    .local v8, "count":I
    new-instance v4, Lcom/meizu/android/mms/pdu/MzPduBody;

    invoke-direct {v4}, Lcom/meizu/android/mms/pdu/MzPduBody;-><init>()V

    .line 890
    .local v4, "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    const-string v22, "PduParser"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "parseParts(), this pdu has part count is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v8, :cond_0

    .line 893
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 894
    .local v12, "headerLength":I
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 895
    .local v9, "dataLength":I
    new-instance v16, Lcom/meizu/android/mms/pdu/MzPduPart;

    invoke-direct/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduPart;-><init>()V

    .line 896
    .local v16, "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 897
    .local v21, "startPos":I
    if-gtz v21, :cond_2

    .line 899
    const-string v22, "PduParser"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ParseParts haveInvalid part. current is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " count is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v4, 0x0

    goto :goto_0

    .line 904
    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 905
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 906
    .local v7, "contentType":[B
    if-eqz v7, :cond_5

    .line 907
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentType([B)V

    .line 913
    :goto_2
    const/16 v22, 0x97

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v15, v22

    check-cast v15, [B

    .line 914
    .local v15, "name":[B
    if-eqz v15, :cond_3

    .line 915
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/meizu/android/mms/pdu/MzPduPart;->setName([B)V

    .line 919
    :cond_3
    const/16 v22, 0x81

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 920
    .local v5, "charset":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 921
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setCharset(I)V

    .line 925
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    .line 926
    .local v11, "endPos":I
    sub-int v22, v21, v11

    sub-int v20, v12, v22

    .line 927
    .local v20, "partHeaderLen":I
    if-lez v20, :cond_6

    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/meizu/android/mms/pdu/MzPduPart;I)Z

    move-result v22

    if-nez v22, :cond_7

    .line 930
    const-string v22, "PduParser"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Parse part header faild. current is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " count is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 909
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v11    # "endPos":I
    .end local v15    # "name":[B
    .end local v20    # "partHeaderLen":I
    :cond_5
    sget-object v22, Lcom/meizu/android/mms/pdu/MzPduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentType([B)V

    goto/16 :goto_2

    .line 933
    .restart local v5    # "charset":Ljava/lang/Integer;
    .restart local v11    # "endPos":I
    .restart local v15    # "name":[B
    .restart local v20    # "partHeaderLen":I
    :cond_6
    if-gez v20, :cond_7

    .line 935
    const-string v22, "PduParser"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid length of content-type. partHeaderLen is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " current is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " count is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 942
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduPart;->getFilename()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v22

    if-nez v22, :cond_8

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentLocation([B)V

    .line 951
    :cond_8
    if-lez v9, :cond_9

    .line 952
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 953
    .local v18, "partData":[B
    new-instance v17, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 954
    .local v17, "partContentType":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 955
    const-string v22, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 957
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v22 .. v22}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzPduBody;

    move-result-object v6

    .line 959
    .local v6, "childBody":Lcom/meizu/android/mms/pdu/MzPduBody;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v16

    .line 985
    .end local v6    # "childBody":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    :cond_9
    :goto_3
    invoke-static/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduParser;->checkPartPosition(Lcom/meizu/android/mms/pdu/MzPduPart;)I

    move-result v22

    if-nez v22, :cond_e

    .line 987
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/meizu/android/mms/pdu/MzPduBody;->addPart(ILcom/meizu/android/mms/pdu/MzPduPart;)V

    .line 892
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 962
    .restart local v17    # "partContentType":Ljava/lang/String;
    .restart local v18    # "partData":[B
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentTransferEncoding()[B

    move-result-object v19

    .line 963
    .local v19, "partDataEncoding":[B
    if-eqz v19, :cond_b

    .line 964
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 965
    .local v10, "encoding":Ljava/lang/String;
    const-string v22, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 967
    invoke-static/range {v18 .. v18}, Lcom/meizu/android/mms/pdu/MzBase64;->decodeBase64([B)[B

    move-result-object v18

    .line 975
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_b
    :goto_5
    if-nez v18, :cond_d

    .line 976
    const-string v22, "Decode part data error!"

    invoke-static/range {v22 .. v22}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 977
    const-string v22, "PduParser"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Decode part data error!  current is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " count is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 968
    .restart local v10    # "encoding":Ljava/lang/String;
    :cond_c
    const-string v22, "quoted-printable"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 970
    invoke-static/range {v18 .. v18}, Lcom/meizu/android/mms/pdu/MzQuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v18

    goto :goto_5

    .line 980
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setData([B)V

    goto :goto_3

    .line 990
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    .end local v19    # "partDataEncoding":[B
    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/meizu/android/mms/pdu/MzPduBody;->addPart(Lcom/meizu/android/mms/pdu/MzPduPart;)Z

    goto :goto_4
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1300
    sget-boolean v1, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1301
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1302
    .local v0, "temp":I
    sget-boolean v1, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1303
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v3, -0x1

    .line 1020
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1021
    :cond_0
    const/4 v0, 0x0

    .line 1022
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1023
    .local v1, "temp":I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1039
    :goto_0
    return v2

    .line 1027
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 1028
    shl-int/lit8 v0, v0, 0x7

    .line 1029
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1030
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1031
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1032
    goto :goto_0

    .line 1036
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 1037
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1039
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1057
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1058
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1059
    .local v1, "temp":I
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1060
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 1062
    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 1065
    .end local v0    # "first":I
    :goto_0
    return v0

    .line 1064
    .restart local v0    # "first":I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 1065
    invoke-static {p0}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 1068
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseValueLengthFrom(Ljava/io/ByteArrayInputStream;)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 864
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 865
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 866
    .local v1, "temp":I
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 867
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 873
    .local v0, "first":I
    return v0
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1124
    sget-boolean v1, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1142
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1145
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1146
    .local v0, "temp":I
    sget-boolean v1, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1147
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1150
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1165
    :goto_0
    invoke-static {p0, p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1151
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1154
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1157
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    .line 1375
    sget-boolean v2, Lcom/meizu/android/mms/pdu/MzPduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1376
    :cond_0
    new-array v0, p1, [B

    .line 1377
    .local v0, "area":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1378
    .local v1, "readLen":I
    if-ge v1, p1, :cond_1

    .line 1379
    const/4 v1, -0x1

    .line 1381
    .end local v1    # "readLen":I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .locals 15

    .prologue
    .line 126
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v13, :cond_1

    .line 127
    const/4 v10, 0x0

    .line 241
    :cond_0
    :goto_0
    return-object v10

    .line 131
    :cond_1
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v13}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-result-object v13

    iput-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .line 132
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    if-nez v13, :cond_2

    .line 134
    const/4 v10, 0x0

    goto :goto_0

    .line 138
    :cond_2
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v14, 0x8c

    invoke-virtual {v13, v14}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v5

    .line 141
    .local v5, "messageType":I
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-static {v13}, Lcom/meizu/android/mms/pdu/MzPduParser;->checkMandatoryHeader(Lcom/meizu/android/mms/pdu/MzPduHeaders;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 142
    const-string v13, "check mandatory headers failed!"

    invoke-static {v13}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 143
    const/4 v10, 0x0

    goto :goto_0

    .line 146
    :cond_3
    const/16 v13, 0x80

    if-eq v13, v5, :cond_4

    const/16 v13, 0x84

    if-ne v13, v5, :cond_5

    .line 149
    :cond_4
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v13}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzPduBody;

    move-result-object v13

    iput-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    .line 150
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    if-nez v13, :cond_5

    .line 152
    const/4 v10, 0x0

    goto :goto_0

    .line 156
    :cond_5
    packed-switch v5, :pswitch_data_0

    .line 240
    const-string v13, "Parser doesn\'t support this message type in this version!"

    invoke-static {v13}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 241
    const/4 v10, 0x0

    goto :goto_0

    .line 161
    :pswitch_0
    new-instance v12, Lcom/meizu/android/mms/pdu/MzSendReq;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    iget-object v14, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    invoke-direct {v12, v13, v14}, Lcom/meizu/android/mms/pdu/MzSendReq;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .local v12, "sendReq":Lcom/meizu/android/mms/pdu/MzSendReq;
    move-object v10, v12

    .line 162
    goto :goto_0

    .line 167
    .end local v12    # "sendReq":Lcom/meizu/android/mms/pdu/MzSendReq;
    :pswitch_1
    new-instance v11, Lcom/meizu/android/mms/pdu/MzSendConf;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v11, v13}, Lcom/meizu/android/mms/pdu/MzSendConf;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .local v11, "sendConf":Lcom/meizu/android/mms/pdu/MzSendConf;
    move-object v10, v11

    .line 168
    goto :goto_0

    .line 173
    .end local v11    # "sendConf":Lcom/meizu/android/mms/pdu/MzSendConf;
    :pswitch_2
    new-instance v6, Lcom/meizu/android/mms/pdu/MzNotificationInd;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v6, v13}, Lcom/meizu/android/mms/pdu/MzNotificationInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .local v6, "notificationInd":Lcom/meizu/android/mms/pdu/MzNotificationInd;
    move-object v10, v6

    .line 175
    goto :goto_0

    .line 180
    .end local v6    # "notificationInd":Lcom/meizu/android/mms/pdu/MzNotificationInd;
    :pswitch_3
    new-instance v7, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v7, v13}, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .local v7, "notifyRespInd":Lcom/meizu/android/mms/pdu/MzNotifyRespInd;
    move-object v10, v7

    .line 182
    goto :goto_0

    .line 187
    .end local v7    # "notifyRespInd":Lcom/meizu/android/mms/pdu/MzNotifyRespInd;
    :pswitch_4
    new-instance v10, Lcom/meizu/android/mms/pdu/MzRetrieveConf;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    iget-object v14, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    invoke-direct {v10, v13, v14}, Lcom/meizu/android/mms/pdu/MzRetrieveConf;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .line 190
    .local v10, "retrieveConf":Lcom/meizu/android/mms/pdu/MzRetrieveConf;
    invoke-virtual {v10}, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->getContentType()[B

    move-result-object v1

    .line 191
    .local v1, "contentType":[B
    if-nez v1, :cond_6

    .line 192
    const/4 v10, 0x0

    goto :goto_0

    .line 194
    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 195
    .local v2, "ctTypeStr":Ljava/lang/String;
    const-string v13, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 202
    const-string v13, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 205
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v4

    .line 206
    .local v4, "firstPart":Lcom/meizu/android/mms/pdu/MzPduPart;
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    invoke-virtual {v13}, Lcom/meizu/android/mms/pdu/MzPduBody;->removeAll()V

    .line 207
    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Lcom/meizu/android/mms/pdu/MzPduBody;->addPart(ILcom/meizu/android/mms/pdu/MzPduPart;)V

    goto/16 :goto_0

    .line 210
    .end local v4    # "firstPart":Lcom/meizu/android/mms/pdu/MzPduPart;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 215
    .end local v1    # "contentType":[B
    .end local v2    # "ctTypeStr":Ljava/lang/String;
    .end local v10    # "retrieveConf":Lcom/meizu/android/mms/pdu/MzRetrieveConf;
    :pswitch_5
    new-instance v3, Lcom/meizu/android/mms/pdu/MzDeliveryInd;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v3, v13}, Lcom/meizu/android/mms/pdu/MzDeliveryInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .local v3, "deliveryInd":Lcom/meizu/android/mms/pdu/MzDeliveryInd;
    move-object v10, v3

    .line 217
    goto/16 :goto_0

    .line 222
    .end local v3    # "deliveryInd":Lcom/meizu/android/mms/pdu/MzDeliveryInd;
    :pswitch_6
    new-instance v0, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v0, v13}, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .local v0, "acknowledgeInd":Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;
    move-object v10, v0

    .line 224
    goto/16 :goto_0

    .line 229
    .end local v0    # "acknowledgeInd":Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;
    :pswitch_7
    new-instance v8, Lcom/meizu/android/mms/pdu/MzReadOrigInd;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v8, v13}, Lcom/meizu/android/mms/pdu/MzReadOrigInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .local v8, "readOrigInd":Lcom/meizu/android/mms/pdu/MzReadOrigInd;
    move-object v10, v8

    .line 231
    goto/16 :goto_0

    .line 236
    .end local v8    # "readOrigInd":Lcom/meizu/android/mms/pdu/MzReadOrigInd;
    :pswitch_8
    new-instance v9, Lcom/meizu/android/mms/pdu/MzReadRecInd;

    iget-object v13, p0, Lcom/meizu/android/mms/pdu/MzPduParser;->mHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v9, v13}, Lcom/meizu/android/mms/pdu/MzReadRecInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .local v9, "readRecInd":Lcom/meizu/android/mms/pdu/MzReadRecInd;
    move-object v10, v9

    .line 238
    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .locals 32
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 252
    if-nez p1, :cond_1

    .line 253
    const/4 v12, 0x0

    .line 845
    :cond_0
    :goto_0
    return-object v12

    .line 255
    :cond_1
    const/4 v13, 0x1

    .line 256
    .local v13, "keepParsing":Z
    new-instance v12, Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v12}, Lcom/meizu/android/mms/pdu/MzPduHeaders;-><init>()V

    .line 258
    .local v12, "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    :cond_2
    :goto_1
    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v28

    if-lez v28, :cond_0

    .line 259
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 260
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 262
    .local v11, "headerField":I
    const/16 v28, 0x20

    move/from16 v0, v28

    if-lt v11, v0, :cond_3

    const/16 v28, 0x7f

    move/from16 v0, v28

    if-gt v11, v0, :cond_3

    .line 263
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 264
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 269
    .local v5, "bVal":[B
    goto :goto_1

    .line 271
    .end local v5    # "bVal":[B
    :cond_3
    packed-switch v11, :pswitch_data_0

    .line 840
    :pswitch_0
    const-string v28, "Unknown header"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 278
    .local v17, "messageType":I
    packed-switch v17, :pswitch_data_1

    .line 298
    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v12, v0, v11}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 299
    :catch_0
    move-exception v7

    .line 300
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 302
    const/4 v12, 0x0

    goto :goto_0

    .line 295
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/4 v12, 0x0

    goto :goto_0

    .line 303
    :catch_1
    move-exception v7

    .line 304
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 305
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 338
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "messageType":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 345
    .local v26, "value":I
    :try_start_1
    move/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 346
    :catch_2
    move-exception v7

    .line 347
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 349
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 350
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v7

    .line 351
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 352
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 363
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 368
    .local v26, "value":J
    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1, v11}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 369
    .end local v26    # "value":J
    :catch_4
    move-exception v7

    .line 370
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 371
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 382
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 387
    .restart local v26    # "value":J
    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1, v11}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 388
    .end local v26    # "value":J
    :catch_5
    move-exception v7

    .line 389
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 390
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 416
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v26

    .line 417
    .local v26, "value":[B
    if-eqz v26, :cond_2

    .line 423
    :try_start_4
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 424
    :catch_6
    move-exception v7

    .line 425
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 426
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v7

    .line 427
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 428
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 444
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v26

    .line 446
    .local v26, "value":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v26, :cond_2

    .line 452
    :try_start_5
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 453
    :catch_8
    move-exception v7

    .line 454
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 455
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v7

    .line 456
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 457
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 468
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v26

    .line 470
    .restart local v26    # "value":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v26, :cond_2

    .line 471
    invoke-virtual/range {v26 .. v26}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 472
    .local v4, "address":[B
    if-eqz v4, :cond_5

    .line 473
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 478
    .local v21, "str":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 479
    .local v8, "endIndex":I
    if-lez v8, :cond_4

    .line 480
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 483
    :cond_4
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 491
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_5
    :try_start_7
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->appendEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 492
    :catch_a
    move-exception v7

    .line 493
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 484
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "endIndex":I
    .restart local v21    # "str":Ljava/lang/String;
    :catch_b
    move-exception v7

    .line 485
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 486
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 494
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :catch_c
    move-exception v7

    .line 495
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 496
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 509
    .end local v4    # "address":[B
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 512
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 517
    .local v24, "token":I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v22

    .line 522
    .local v22, "timeValue":J
    const/16 v28, 0x81

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    add-long v22, v22, v28

    .line 533
    :cond_6
    :try_start_9
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1, v11}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 534
    :catch_d
    move-exception v7

    .line 535
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 536
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 518
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "timeValue":J
    :catch_e
    move-exception v7

    .line 519
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 520
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 546
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "token":I
    :pswitch_a
    const/4 v9, 0x0

    .line 547
    .local v9, "from":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduParser;->mProtocol:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduParser;->mProtocol:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 548
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLengthFrom(Ljava/io/ByteArrayInputStream;)I

    .line 554
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 557
    .local v10, "fromToken":I
    const/16 v28, 0x80

    move/from16 v0, v28

    if-ne v0, v10, :cond_b

    .line 559
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v9

    .line 560
    if-eqz v9, :cond_9

    .line 561
    invoke-virtual {v9}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 562
    .restart local v4    # "address":[B
    if-eqz v4, :cond_9

    .line 563
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 564
    .restart local v21    # "str":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 565
    .restart local v8    # "endIndex":I
    if-lez v8, :cond_8

    .line 566
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 569
    :cond_8
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 591
    .end local v4    # "address":[B
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_9
    :goto_3
    const/16 v28, 0x89

    :try_start_b
    move/from16 v0, v28

    invoke-virtual {v12, v9, v0}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 592
    :catch_f
    move-exception v7

    .line 593
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "fromToken":I
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    goto :goto_2

    .line 570
    .restart local v4    # "address":[B
    .restart local v8    # "endIndex":I
    .restart local v10    # "fromToken":I
    .restart local v21    # "str":Ljava/lang/String;
    :catch_10
    move-exception v7

    .line 571
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 572
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 578
    .end local v4    # "address":[B
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_b
    :try_start_c
    new-instance v9, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .end local v9    # "from":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    const-string v28, "insert-address-token"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v9    # "from":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    goto :goto_3

    .line 580
    .end local v9    # "from":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :catch_11
    move-exception v7

    .line 581
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 582
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 594
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "from":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :catch_12
    move-exception v7

    .line 595
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 596
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 603
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "from":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v10    # "fromToken":I
    :pswitch_b
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 604
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .line 610
    .local v15, "messageClass":I
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v15, v0, :cond_f

    .line 613
    const/16 v28, 0x80

    move/from16 v0, v28

    if-ne v0, v15, :cond_c

    .line 614
    :try_start_d
    const-string v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 630
    :catch_13
    move-exception v7

    .line 631
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 617
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :cond_c
    const/16 v28, 0x81

    move/from16 v0, v28

    if-ne v0, v15, :cond_d

    .line 618
    :try_start_e
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 632
    :catch_14
    move-exception v7

    .line 633
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 634
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 621
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_d
    const/16 v28, 0x82

    move/from16 v0, v28

    if-ne v0, v15, :cond_e

    .line 622
    :try_start_f
    const-string v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 625
    :cond_e
    const/16 v28, 0x83

    move/from16 v0, v28

    if-ne v0, v15, :cond_2

    .line 626
    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    .line 638
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 639
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 640
    .local v16, "messageClassString":[B
    if-eqz v16, :cond_2

    .line 642
    const/16 v28, 0x8a

    :try_start_10
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    .line 643
    :catch_15
    move-exception v7

    .line 644
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 645
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v7

    .line 646
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 647
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 655
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "messageClass":I
    .end local v16    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 662
    .local v25, "version":I
    const/16 v28, 0x8d

    :try_start_11
    move/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    .line 663
    :catch_17
    move-exception v7

    .line 664
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 666
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 667
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v7

    .line 668
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 669
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 678
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "version":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 682
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 689
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v20

    .line 691
    .local v20, "previouslySentBy":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v20, :cond_2

    .line 697
    const/16 v28, 0xa0

    :try_start_13
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    .line 699
    :catch_19
    move-exception v7

    .line 700
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 683
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v20    # "previouslySentBy":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :catch_1a
    move-exception v7

    .line 684
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 685
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 701
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v20    # "previouslySentBy":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :catch_1b
    move-exception v7

    .line 702
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 703
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 713
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "previouslySentBy":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 717
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 725
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .line 730
    .local v18, "perviouslySentDate":J
    const/16 v28, 0xa1

    move-wide/from16 v0, v18

    move/from16 v2, v28

    invoke-virtual {v12, v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .line 732
    .end local v18    # "perviouslySentDate":J
    :catch_1c
    move-exception v7

    .line 733
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 734
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 718
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v7

    .line 719
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 720
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 751
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 754
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 757
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    goto/16 :goto_1

    .line 773
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 776
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 780
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    .line 781
    :catch_1e
    move-exception v7

    .line 782
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 783
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 795
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 803
    :pswitch_12
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 805
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/meizu/android/mms/pdu/MzPduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 808
    .local v6, "contentType":[B
    if-eqz v6, :cond_10

    .line 814
    const/16 v28, 0x84

    :try_start_17
    move/from16 v0, v28

    invoke-virtual {v12, v6, v0}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    .line 824
    :cond_10
    :goto_4
    const/16 v28, 0x99

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    check-cast v28, [B

    sput-object v28, Lcom/meizu/android/mms/pdu/MzPduParser;->mStartParam:[B

    .line 827
    const/16 v28, 0x83

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    check-cast v28, [B

    sput-object v28, Lcom/meizu/android/mms/pdu/MzPduParser;->mTypeParam:[B

    .line 829
    const/4 v13, 0x0

    .line 830
    goto/16 :goto_1

    .line 815
    :catch_1f
    move-exception v7

    .line 816
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 817
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_20
    move-exception v7

    .line 818
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduParser;->log(Ljava/lang/String;)V

    .line 819
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 278
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
