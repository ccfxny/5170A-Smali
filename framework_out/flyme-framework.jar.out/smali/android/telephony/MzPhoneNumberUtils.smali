.class public Landroid/telephony/MzPhoneNumberUtils;
.super Ljava/lang/Object;
.source "MzPhoneNumberUtils.java"


# static fields
.field private static final CHINA_COUNTRY_CODE:I = 0x56

.field public static final CHINA_PHONE_NUMBER_SIZE:I = 0xb

.field private static final CN_IP_PREFIX_LENGTH:I = 0x5

.field private static final COUNTRY_CODES:[Ljava/lang/String;

.field public static final INDIA_COUNTRY_CODE:Ljava/lang/String; = "91"

.field public static final INDIA_COUNTRY_ISO:Ljava/lang/String; = "IN"

.field public static final INDIA_PHONE_NUMBER_SIZE:I = 0xa

.field private static final IP_DIAL_NUMBER:[Ljava/lang/String;

.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final POLAND_COUNTRY_CODE:Ljava/lang/String; = "48"

.field public static final POLAND_COUNTRY_ISO:Ljava/lang/String; = "PL"

.field public static final POLAND_PHONE_NUMBER_SIZE:I = 0x9

.field private static final SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

.field private static final SPECAIL_NUMBER_OF_CHINA_RES:[I

.field private static final TAG:Ljava/lang/String; = "MzPhoneNumberUtils"

.field private static final VDBG:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/16 v0, 0x42

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "10000"

    aput-object v1, v0, v3

    const-string v1, "10010"

    aput-object v1, v0, v4

    const-string v1, "10011"

    aput-object v1, v0, v5

    const-string v1, "10050"

    aput-object v1, v0, v6

    const-string v1, "10086"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "10087"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "12121"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "12315"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "12348"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "12358"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "12369"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12365"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12366"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "12310"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "12333"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "12345"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "12580"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "4008111111"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "4006789000"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "4006781515"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "4009881888"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "8008208388"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "8008108000"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "4008108000"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "8008209868"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "4008209868"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "4008305555"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "11185"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "95519"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "95522"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "95528"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "95533"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "95555"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "95556"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "95558"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "95501"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "95502"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "95505"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "95508"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "95509"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "95510"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "95511"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "95512"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "95515"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "95516"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "95518"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "95559"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "95561"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "95565"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "95566"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "95567"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "95568"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "95569"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "95577"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "95580"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "95585"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "95586"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "95588"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "95589"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "95590"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "95591"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "95595"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "95596"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "95598"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "95599"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "4007883333"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    .line 111
    const/16 v0, 0x42

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA_RES:[I

    .line 181
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v3

    const-string v1, "17951"

    aput-object v1, v0, v4

    const-string v1, "17911"

    aput-object v1, v0, v5

    const-string v1, "17910"

    aput-object v1, v0, v6

    const-string v1, "17909"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "10131"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "10193"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "96531"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "193"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "12589"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "12598"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12520"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    .line 187
    const/16 v0, 0xe5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "86"

    aput-object v1, v0, v3

    const-string v1, "852"

    aput-object v1, v0, v4

    const-string v1, "853"

    aput-object v1, v0, v5

    const-string v1, "886"

    aput-object v1, v0, v6

    const-string v1, "93"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "355"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "213"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "684"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "376"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "244"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1264"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "672"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1268"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "374"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "297"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "994"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "973"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "880"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "1246"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "375"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "501"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "229"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "1441"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "975"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "387"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "267"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "1284"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "673"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "359"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "257"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "855"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "237"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "238"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "1345"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "236"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "235"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "269"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "243"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "242"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "682"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "506"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "385"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "357"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "420"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "253"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "1767"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "1809"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "593"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "503"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "240"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "291"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "372"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "251"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "500"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "298"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "679"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "358"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "594"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "689"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "241"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "995"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "233"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "350"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "299"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "1473"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "590"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "1671"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "502"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "1481"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "224"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "245"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "592"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "509"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "379"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "504"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "354"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "964"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "353"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "972"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "1876"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "81"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "962"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "76"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "77"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "254"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "686"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "850"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "82"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "965"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "996"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "856"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "961"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "266"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "231"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "218"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "423"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "370"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "352"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "389"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "261"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "265"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "960"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "223"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "356"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "692"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "596"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "222"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "230"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "269"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "691"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "373"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "377"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "976"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "1664"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "212"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "258"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "264"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "674"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "977"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "599"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "687"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "505"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "227"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "234"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "683"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, ",6723"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "968"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "92"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "680"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "507"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "675"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "595"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "63"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "1809"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "974"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "262"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "250"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "290"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "1869"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "1758"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "508"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "1784"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "685"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "378"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "239"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "966"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "221"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "381"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "248"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "232"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "421"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "386"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "677"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "252"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "249"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "597"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "268"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "963"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "992"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "255"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "1242"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "220"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "228"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "690"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "676"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "1868"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "216"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "993"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "1649"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "688"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "256"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "380"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "598"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "998"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "678"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "84"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "1340"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "681"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "967"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "260"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "263"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->COUNTRY_CODES:[Ljava/lang/String;

    .line 394
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzPhoneNumberUtils;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 111
    :array_0
    .array-data 4
        0xa0a0006
        0xa0a0007
        0xa0a0007
        0xa0a0008
        0xa0a0009
        0xa0a0009
        0xa0a000a
        0xa0a000b
        0xa0a000c
        0xa0a000d
        0xa0a000e
        0xa0a000f
        0xa0a0010
        0xa0a0011
        0xa0a0012
        0xa0a0013
        0xa0a0014
        0xa0a0015
        0xa0a0016
        0xa0a0017
        0xa0a0018
        0xa0a0019
        0xa0a001a
        0xa0a001a
        0xa0a001b
        0xa0a001b
        0xa0a001c
        0xa0a001d
        0xa0a001e
        0xa0a001f
        0xa0a0020
        0xa0a0021
        0xa0a0022
        0xa0a0023
        0xa0a0024
        0xa0a0025
        0xa0a0026
        0xa0a0027
        0xa0a0028
        0xa0a0029
        0xa0a002a
        0xa0a002b
        0xa0a002c
        0xa0a002d
        0xa0a002e
        0xa0a002f
        0xa0a0030
        0xa0a0031
        0xa0a0032
        0xa0a0033
        0xa0a0034
        0xa0a0035
        0xa0a0036
        0xa0a0037
        0xa0a0038
        0xa0a0039
        0xa0a003a
        0xa0a003b
        0xa0a003c
        0xa0a003d
        0xa0a003e
        0xa0a003f
        0xa0a0040
        0xa0a0041
        0xa0a0042
        0xa0a0043
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 402
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 404
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 407
    .end local p0    # "address":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getCNSpecailNumberDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 219
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA_RES:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_1
    return-object v1

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x30

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 536
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 558
    .end local p0    # "number":Ljava/lang/String;
    .local v0, "arr$":[Ljava/lang/String;
    .local v1, "cc":Ljava/lang/String;
    .local v2, "haveCountryCode":Z
    .local v3, "i$":I
    .local v4, "len$":I
    .local v5, "tempNum":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 540
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cc":Ljava/lang/String;
    .end local v2    # "haveCountryCode":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "tempNum":Ljava/lang/String;
    .restart local p0    # "number":Ljava/lang/String;
    :cond_0
    move-object v5, p0

    .line 541
    .restart local v5    # "tempNum":Ljava/lang/String;
    const/4 v2, 0x0

    .line 543
    .restart local v2    # "haveCountryCode":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 544
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 545
    const/4 v2, 0x1

    .line 551
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 552
    sget-object v0, Landroid/telephony/MzPhoneNumberUtils;->COUNTRY_CODES:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 553
    .restart local v1    # "cc":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object p0, v1

    .line 554
    goto :goto_0

    .line 546
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cc":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_1

    .line 547
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 548
    const/4 v2, 0x1

    goto :goto_1

    .line 552
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "cc":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 558
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cc":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZ)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "needRemoveIpPrefix"    # Z
    .param p4, "needValidNumber"    # Z

    .prologue
    .line 267
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/telephony/MzPhoneNumberUtils;->getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZZ)Ljava/lang/String;
    .locals 13
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "needRemoveIpPrefix"    # Z
    .param p4, "needValidNumber"    # Z
    .param p5, "requestSpecailNumber"    # Z

    .prologue
    .line 287
    const-string v10, "MzPhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getDescriptionForNumber()  number :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",countryIso :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",languageCode :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",needRemoveIpPrefix :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",needValidNumber :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",requestSpecailNumber :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-nez p0, :cond_1

    .line 292
    const-string v2, ""

    .line 352
    :cond_0
    :goto_0
    return-object v2

    .line 295
    :cond_1
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v4

    .line 296
    .local v4, "geocoder":Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-static {}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v9

    .line 298
    .local v9, "util":Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v8, 0x0

    .line 301
    .local v8, "pn":Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v9, p0, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/meizu/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 306
    :goto_1
    if-nez v8, :cond_2

    .line 307
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0xa0a00af

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 302
    :catch_0
    move-exception v3

    .line 303
    .local v3, "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    const-string v10, "MzPhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDescriptionForNumber: NumberParseException for incoming number \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    .end local v3    # "e":Lcom/meizu/i18n/phonenumbers/NumberParseException;
    :cond_2
    const-string v2, ""

    .line 311
    .local v2, "desc":Ljava/lang/String;
    const/16 v10, 0x56

    invoke-virtual {v8}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v11

    if-eq v10, v11, :cond_3

    invoke-virtual {v8}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v10

    if-nez v10, :cond_9

    .line 312
    :cond_3
    invoke-static {p0}, Landroid/telephony/MzPhoneNumberUtils;->isCNIpPrefix(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    .line 314
    :cond_4
    invoke-virtual {v8}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "nationalNumberStr":Ljava/lang/String;
    if-eqz p3, :cond_5

    .line 316
    invoke-static {v5}, Landroid/telephony/MzPhoneNumberUtils;->removeCNIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    const-wide/16 v6, 0x0

    .line 319
    .local v6, "nationalNumber":J
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 323
    :goto_2
    invoke-virtual {v8, v6, v7}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 326
    .end local v6    # "nationalNumber":J
    :cond_5
    if-eqz p5, :cond_6

    sget-object v10, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz p2, :cond_6

    sget-object v10, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 328
    invoke-static {v5}, Landroid/telephony/MzPhoneNumberUtils;->getCNSpecailNumberDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 334
    const-string v10, "0"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "+"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "1"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    invoke-static {p0}, Landroid/telephony/MzPhoneNumberUtils;->isCNIpPrefix(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "10"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 336
    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0xa0a00af

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 320
    .restart local v6    # "nationalNumber":J
    :catch_1
    move-exception v3

    .line 321
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v10, "MzPhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NumberFormatException : nationalNumber:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 340
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "nationalNumberStr":Ljava/lang/String;
    .end local v6    # "nationalNumber":J
    :cond_9
    const-string v10, "MzPhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " pn :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",pn.getCountryCode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 343
    if-eqz p4, :cond_b

    .line 344
    invoke-virtual {v4, v8, p2}, Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_a
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 350
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0xa0a00af

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 346
    :cond_b
    const/4 v10, 0x1

    invoke-virtual {v4, v8, p2, p1, v10}, Lcom/meizu/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static getLocalCountryISO(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    :try_start_0
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 517
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 519
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 527
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "detector":Landroid/location/CountryDetector;
    :goto_0
    return-object v3

    .line 523
    :catch_0
    move-exception v2

    .line 524
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 527
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isCNIpPrefix(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 243
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 248
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 242
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/4 v2, 0x0

    .line 424
    :goto_0
    return v2

    .line 422
    :cond_0
    invoke-static {p0}, Landroid/telephony/MzPhoneNumberUtils;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 424
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method public static isNotificationNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 470
    const-string v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNotificationNumber "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->isSnsRecipient(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 509
    :cond_1
    :goto_0
    return v4

    .line 476
    :cond_2
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "country":Ljava/lang/String;
    const-string v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCountryCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-nez v0, :cond_3

    .line 481
    invoke-static {p0}, Landroid/telephony/MzPhoneNumberUtils;->getLocalCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocalCountryISO = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    if-eqz v0, :cond_5

    const-string v6, "48"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "PL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 487
    :cond_4
    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->removeCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 488
    const-string v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "POLAND_COUNTRY_CODE, removeCountryCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_1

    move v4, v5

    goto/16 :goto_0

    .line 490
    :cond_5
    if-eqz v0, :cond_7

    const-string v6, "91"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "IN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 492
    :cond_6
    invoke-static {p1}, Landroid/telephony/MzPhoneNumberUtils;->removeCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 493
    const-string v6, "MzPhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INDIA_COUNTRY_CODE, removeCountryCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_1

    move v4, v5

    goto/16 :goto_0

    .line 496
    :cond_7
    const-string v6, "MzPhoneNumberUtils"

    const-string v7, "Default Country"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xb

    if-le v6, v7, :cond_8

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xb

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "numberPrefix":Ljava/lang/String;
    const-string v6, "1065"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "1066"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "12520"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "10690"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xb

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 506
    .end local v2    # "numberPrefix":Ljava/lang/String;
    :cond_8
    const-string v6, "^((13[0-9])|(15[^4,\\D])|(18[0-9])|(170)|(176)|(177)|(178)|(147))\\d{8}$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 507
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 509
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    goto/16 :goto_0
.end method

.method public static final isSnsRecipient(Ljava/lang/String;)Z
    .locals 3
    .param p0, "recipientStr"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "isSnsRecipients":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    move v1, v0

    .line 441
    :goto_0
    return v1

    .line 437
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    const/4 v0, 0x1

    move v1, v0

    .line 441
    goto :goto_0

    .line 440
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeCNIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 229
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    const-string p0, ""

    .line 236
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 231
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    sget-object v1, Landroid/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x30

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 360
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 364
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 366
    .local v2, "haveCountryCode":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_3

    .line 367
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 368
    const/4 v2, 0x1

    .line 374
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 375
    sget-object v0, Landroid/telephony/MzPhoneNumberUtils;->COUNTRY_CODES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 376
    .local v1, "cc":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 377
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 369
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cc":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    .line 370
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 371
    const/4 v2, 0x1

    goto :goto_1

    .line 375
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "cc":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
