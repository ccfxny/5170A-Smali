.class public Lcom/google/android/mms/pdu/smil/SmilSimpleParse;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
    }
.end annotation


# static fields
.field public static final AMAP_MAP_SHORT_URL_PREFIX:Ljava/lang/String; = "http://mo.amap.com/?"

.field public static final AUDIO_FLAG:I = 0x1000

.field public static final BAIDU_MAP_SHORT_URL_PREFIX:Ljava/lang/String; = "http://j.map.baidu.com"

.field public static final ELEMENT_TAG_AUDIO:Ljava/lang/String; = "audio"

.field public static final ELEMENT_TAG_AUDIO_INDEX:I = 0x3

.field public static final ELEMENT_TAG_FILE:Ljava/lang/String; = "file"

.field public static final ELEMENT_TAG_FILE_INDEX:I = 0x7

.field public static final ELEMENT_TAG_IMAGE:Ljava/lang/String; = "img"

.field public static final ELEMENT_TAG_IMAGE_INDEX:I = 0x1

.field public static final ELEMENT_TAG_LOCATION:Ljava/lang/String; = "location"

.field public static final ELEMENT_TAG_REF:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_REF_INDEX:I = 0x5

.field public static final ELEMENT_TAG_TALK:Ljava/lang/String; = "talk"

.field public static final ELEMENT_TAG_TALK_INDEX:I = 0x6

.field public static final ELEMENT_TAG_TEXT:Ljava/lang/String; = "text"

.field public static final ELEMENT_TAG_TEXT_INDEX:I = 0x0

.field public static final ELEMENT_TAG_VCARD:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_VCARD_INDEX:I = 0x4

.field public static final ELEMENT_TAG_VIDEO:Ljava/lang/String; = "video"

.field public static final ELEMENT_TAG_VIDEO_INDEX:I = 0x2

.field public static final FILE_FLAG:I = 0x1000000

.field public static final GOOGLE_MAP_SHORT_URL_PREFIX:Ljava/lang/String; = "http://maps.google.com/maps?"

.field public static final IMAGE_FLAG:I = 0x10

.field public static final M8_VCARD_STREAM:Ljava/lang/String; = "image/tiff"

.field public static final NONE_FLAGS:I = 0x0

.field public static final OCT_STREAM:Ljava/lang/String; = "application/oct-stream"

.field public static final SEPARATE_FIRST:Ljava/lang/String; = ";"

.field public static final SEPARATE_SECOND:Ljava/lang/String; = "#"

.field public static final SMIL_BODY_TAG:Ljava/lang/String; = "body"

.field public static final SMIL_PAR_ITEM_ATTR_TAG:[Ljava/lang/String;

.field public static final SMIL_PAR_ITEM_TAG:[Ljava/lang/String;

.field public static final SMIL_PAR_TAG:Ljava/lang/String; = "par"

.field private static final TAG:Ljava/lang/String; = "SmilSimpleParse"

.field public static final TALK_FLAG:I = 0x100000

.field public static final TEXT_FLAG:I = 0x1

.field public static final VCARD_FLAG:I = 0x10000

.field public static final VIDEO_FLAG:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text"

    aput-object v1, v0, v3

    const-string v1, "img"

    aput-object v1, v0, v4

    const-string v1, "video"

    aput-object v1, v0, v5

    const-string v1, "audio"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "ref"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ref"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "talk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "file"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->SMIL_PAR_ITEM_TAG:[Ljava/lang/String;

    .line 98
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "src"

    aput-object v1, v0, v3

    const-string v1, "region"

    aput-object v1, v0, v4

    const-string v1, "alt"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->SMIL_PAR_ITEM_ATTR_TAG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    return-void
.end method

.method private static appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I
    .locals 3
    .param p0, "smilBody"    # Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "flags"    # I
    .param p3, "currentFlag"    # I
    .param p4, "xmlTag"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;-><init>()V

    .line 150
    .local v0, "item":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setPduPart(Lcom/google/android/mms/pdu/PduPart;)V

    .line 151
    invoke-virtual {v0, p4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setTag(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setSrc(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    and-int v2, p2, p3

    if-nez v2, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->itemLast()Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;)V

    .line 158
    or-int v2, p2, p3

    .line 164
    :goto_0
    return v2

    .line 161
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    .end local v1    # "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-direct {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;-><init>()V

    .line 162
    .restart local v1    # "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;)V

    .line 164
    or-int/lit8 v2, p3, 0x0

    goto :goto_0
.end method

.method public static correctPduSmil(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Z
    .locals 9
    .param p0, "pduBody"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 235
    invoke-static {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 236
    .local v2, "partSmil":Lcom/google/android/mms/pdu/PduPart;
    const/4 v5, 0x0

    .line 237
    .local v5, "smilBody":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    if-nez v2, :cond_1

    .line 238
    const-string v7, "SmilSimpleParse"

    const-string v8, "correctPduSmil(): the smil part is null..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    :goto_0
    return v6

    .line 240
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_3

    .line 241
    :cond_2
    const-string v6, "SmilSimpleParse"

    const-string v8, "correctPduSmil(): the smil part data is null, make new smil file..."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->createByPduBody(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v5

    .line 243
    new-instance v4, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;-><init>(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;)V

    .line 244
    .local v4, "smilBean":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->makeSmilXml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v2, v6, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->updateParts(Lcom/google/android/mms/pdu/PduPart;[BLandroid/content/Context;)Z

    move v6, v7

    .line 245
    goto :goto_0

    .line 247
    .end local v4    # "smilBean":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->parserBySax([B)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v5

    .line 248
    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->isNeedRebuildSmil(Lcom/google/android/mms/pdu/PduBody;Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 249
    const-string v6, "SmilSimpleParse"

    const-string v8, "correctPduSmil(): the old smil is wrong, so we\'ll make new smil file..."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 251
    .local v3, "smil":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->createByPduBody(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v5

    .line 252
    const-string v6, "<body>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, "beginBodyIndex":I
    const-string v6, "</body>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 254
    .local v1, "endBodyIndex":I
    if-le v1, v0, :cond_4

    if-lez v0, :cond_4

    .line 255
    add-int/lit8 v6, v1, 0x7

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->makeSmilXml()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v6, v8}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v2, v6, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->updateParts(Lcom/google/android/mms/pdu/PduPart;[BLandroid/content/Context;)Z

    :cond_4
    move v6, v7

    .line 258
    goto :goto_0
.end method

.method private static createByPduBody(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    .locals 10
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    .line 192
    .local v5, "partsNum":I
    if-nez v5, :cond_1

    .line 193
    const-string v7, "SmilSimpleParse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createByPduBody(): make new siml, but partsNum is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v6, 0x0

    .line 223
    :cond_0
    return-object v6

    .line 197
    :cond_1
    new-instance v6, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;-><init>()V

    .line 198
    .local v6, "smilBody":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    const/4 v1, 0x0

    .line 199
    .local v1, "flags":I
    new-instance v3, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;-><init>()V

    .line 200
    .local v3, "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-virtual {v6, v3}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;)V

    .line 201
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 203
    .local v4, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-static {v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "contentType":Ljava/lang/String;
    const-string v7, "text/plain"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "text/html"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 207
    :cond_2
    const/4 v7, 0x1

    const-string v8, "text"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    .line 201
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_3
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 209
    const/16 v7, 0x10

    const-string v8, "img"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 210
    :cond_4
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 211
    const/16 v7, 0x100

    const-string v8, "video"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 212
    :cond_5
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 213
    const/16 v7, 0x1000

    const-string v8, "audio"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 214
    :cond_6
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVcardType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 215
    const/high16 v7, 0x10000

    const-string v8, "ref"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 216
    :cond_7
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isTalkType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 217
    const/high16 v7, 0x100000

    const-string v8, "talk"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 220
    :cond_8
    const-string v7, "SmilSimpleParse"

    const-string v8, "createByPduBody(): unsupport media type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "&"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 494
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_1

    .line 495
    invoke-static {p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 496
    const-string v3, "cid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 497
    const-string v3, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_0

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 516
    .end local v0    # "cid":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 521
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v2

    .line 503
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 504
    if-nez v1, :cond_1

    .line 505
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 506
    if-nez v1, :cond_1

    .line 507
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 508
    if-nez v1, :cond_1

    .line 509
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPartExtend(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    goto :goto_0

    .line 519
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPartSuper(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    move-object v2, v1

    .line 521
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    goto :goto_1
.end method

.method private static findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p0, "item"    # Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 479
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    if-nez v0, :cond_0

    .line 480
    invoke-static {p1, p2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 481
    :cond_0
    return-object v0
.end method

.method private static findPartExtend(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 3
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 582
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 583
    .local v1, "potIndex":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 584
    const/4 v0, 0x0

    .line 593
    :cond_0
    :goto_0
    return-object v0

    .line 585
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 587
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 589
    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_0
.end method

.method private static findPartSuper(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 6
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3c

    const/4 v5, 0x0

    .line 525
    const/4 v1, 0x0

    .line 527
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_3

    .line 528
    invoke-static {p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 529
    const-string v3, "cid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 530
    const-string v3, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 535
    if-nez v1, :cond_3

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 536
    const-string v3, "<"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 538
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 571
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v2

    .line 540
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 542
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 543
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    goto :goto_0

    .line 544
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .end local v0    # "cid":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v2, v1

    .line 571
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    goto :goto_0

    .line 548
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    .line 549
    const-string v3, "<"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 551
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 552
    if-nez v1, :cond_6

    .line 553
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 554
    if-nez v1, :cond_6

    .line 555
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 558
    :cond_6
    if-nez v1, :cond_3

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 559
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 560
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 561
    if-nez v1, :cond_3

    .line 562
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 563
    if-nez v1, :cond_3

    .line 564
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    goto :goto_1
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .param p0, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 127
    .local v2, "partNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 129
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 127
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 450
    const-string v0, ""

    .line 467
    :cond_0
    :goto_0
    return-object v0

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "contentType":Ljava/lang/String;
    const-string v3, "image/jpg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    const-string v0, "image/jpeg"

    goto :goto_0

    .line 457
    :cond_2
    const-string v3, "application/oct-stream"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 458
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 459
    .local v1, "name":Ljava/lang/String;
    const-string v3, "vcf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    const-string v0, "text/x-vcard"

    goto :goto_0

    .line 461
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const-string v3, "image/tiff"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 462
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 463
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 464
    .local v2, "namelen":I
    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".vcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    const-string v0, "text/x-vcard"

    goto :goto_0
.end method

.method public static getUpdatesFromPduBody(Lcom/google/android/mms/pdu/PduBody;)[Ljava/lang/String;
    .locals 19
    .param p0, "pduBody"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 310
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v1, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, ""

    aput-object v17, v1, v16

    const/16 v16, 0x1

    const-string v17, ""

    aput-object v17, v1, v16

    const/16 v16, 0x2

    const-string v17, ""

    aput-object v17, v1, v16

    .line 311
    .local v1, "column":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 312
    .local v9, "partSmil":Lcom/google/android/mms/pdu/PduPart;
    const/4 v13, 0x0

    .line 313
    .local v13, "smilBody":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 315
    :cond_0
    const-string v16, "SmilSimpleParse"

    const-string v17, "getUpdatesFromPduBody(): make new smil file..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->createByPduBody(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v13

    .line 321
    :goto_0
    if-nez v13, :cond_3

    .line 439
    :cond_1
    :goto_1
    return-object v1

    .line 318
    :cond_2
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->parserBySax([B)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v13

    goto :goto_0

    .line 324
    :cond_3
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->size()I

    move-result v11

    .line 325
    .local v11, "slidesNum":I
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v2, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    const/16 v16, 0x1

    const-string v17, ""

    aput-object v17, v2, v16

    const/16 v16, 0x2

    const-string v17, ""

    aput-object v17, v2, v16

    .line 327
    .local v2, "description":[Ljava/lang/String;
    const/16 v16, 0x2

    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 328
    if-eqz v11, :cond_1

    .line 330
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v7

    .line 331
    .local v7, "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->size()I

    move-result v6

    .line 333
    .local v6, "mediaNum":I
    const/4 v12, 0x0

    .line 334
    .local v12, "sme":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    const/4 v8, 0x0

    .line 335
    .local v8, "part":Lcom/google/android/mms/pdu/PduPart;
    const-string v15, ""

    .line 336
    .local v15, "tag":Ljava/lang/String;
    const-string v14, ""

    .line 337
    .local v14, "src":Ljava/lang/String;
    const v3, 0x7fffffff

    .line 339
    .local v3, "find":I
    const/4 v4, 0x0

    .line 341
    .local v4, "hasText":Z
    const/4 v10, 0x0

    .line 343
    .local v10, "singleParMediacount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v6, :cond_7

    .line 344
    invoke-virtual {v7, v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v12

    .line 345
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getTag()Ljava/lang/String;

    move-result-object v15

    .line 346
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getSrc()Ljava/lang/String;

    move-result-object v14

    .line 348
    const-string v16, "text"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 349
    if-nez v4, :cond_4

    .line 350
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 351
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "text#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 352
    const/16 v16, 0x0

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 424
    :cond_4
    :goto_3
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_5

    const-string v16, "text"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 425
    add-int/lit8 v10, v10, 0x1

    .line 428
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_6

    if-eqz v4, :cond_6

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_7

    :cond_6
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_a

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v10, v0, :cond_a

    if-eqz v4, :cond_a

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_a

    .line 433
    :cond_7
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v10, v0, :cond_8

    .line 434
    const/16 v16, 0x0

    const-string v17, "2"

    aput-object v17, v2, v16

    .line 435
    const-string v16, "SmilSimpleParse"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getUpdatesFromPduBody(), single slideshow has more media, slidesNum is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", singleParMediacount is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_8
    const/16 v16, 0x2

    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    goto/16 :goto_1

    .line 354
    :cond_9
    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v3, v0, :cond_4

    .line 355
    const-string v16, "img"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 356
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 357
    if-nez v8, :cond_b

    .line 343
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 358
    :cond_b
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->isLocationItem()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 359
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "location#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 363
    :goto_4
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 364
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 361
    :cond_c
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "img#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    goto :goto_4

    .line 365
    :cond_d
    const-string v16, "video"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 366
    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v3, v0, :cond_4

    .line 367
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 368
    if-eqz v8, :cond_a

    .line 369
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "video#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 370
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 371
    const/4 v3, 0x2

    goto/16 :goto_3

    .line 373
    :cond_e
    const-string v16, "audio"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 374
    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v3, v0, :cond_4

    .line 375
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 376
    if-eqz v8, :cond_a

    .line 377
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "audio#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 378
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 379
    const/4 v3, 0x3

    goto/16 :goto_3

    .line 381
    :cond_f
    const-string v16, "ref"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 382
    const/16 v16, 0x4

    move/from16 v0, v16

    if-le v3, v0, :cond_4

    .line 383
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 384
    if-eqz v8, :cond_a

    .line 385
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ref#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 386
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 387
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 389
    :cond_10
    const-string v16, "ref"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 390
    const/16 v16, 0x5

    move/from16 v0, v16

    if-le v3, v0, :cond_4

    .line 391
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 392
    if-eqz v8, :cond_a

    .line 393
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ref#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 394
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 395
    const/4 v3, 0x5

    goto/16 :goto_3

    .line 397
    :cond_11
    const-string v16, "talk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 398
    const/16 v16, 0x6

    move/from16 v0, v16

    if-le v3, v0, :cond_4

    .line 399
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 400
    if-eqz v8, :cond_a

    .line 401
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "talk#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 402
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 403
    const/4 v3, 0x6

    goto/16 :goto_3

    .line 405
    :cond_12
    const-string v16, "file"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 406
    const/16 v16, 0x7

    move/from16 v0, v16

    if-le v3, v0, :cond_4

    .line 407
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 408
    if-eqz v8, :cond_a

    .line 409
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 410
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 411
    const/4 v3, 0x7

    goto/16 :goto_3

    .line 414
    :cond_13
    const/16 v16, 0x8

    move/from16 v0, v16

    if-le v3, v0, :cond_4

    .line 415
    move-object/from16 v0, p0

    invoke-static {v12, v0, v14}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 416
    if-eqz v8, :cond_a

    .line 417
    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v16

    .line 418
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v16

    .line 419
    const/16 v3, 0x8

    goto/16 :goto_3
.end method

.method public static final isLocationUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alt"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://j.map.baidu.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://maps.google.com/maps?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://mo.amap.com/?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNeedRebuildSmil(Lcom/google/android/mms/pdu/PduBody;Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;)Z
    .locals 7
    .param p0, "pduBody"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "smilBody"    # Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    .prologue
    const/4 v5, 0x1

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 295
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v3

    .line 296
    .local v3, "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 305
    .end local v3    # "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    :cond_0
    :goto_1
    return v5

    .line 298
    .restart local v3    # "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 299
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v1

    .line 300
    .local v1, "item":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "src":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 294
    .end local v1    # "item":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    .end local v4    # "src":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "j":I
    .end local v3    # "par":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static parserBySax([B)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    .locals 14
    .param p0, "smilByte"    # [B

    .prologue
    const/4 v10, 0x0

    .line 611
    if-eqz p0, :cond_0

    array-length v11, p0

    if-nez v11, :cond_2

    :cond_0
    move-object v6, v10

    .line 647
    :cond_1
    :goto_0
    return-object v6

    .line 614
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>([B)V

    .line 615
    .local v7, "smilByteStringTemp":Ljava/lang/String;
    const-string v11, "SmilSimpleParse"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parserBySax -> smilByteStringTemp : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v11, "</smil>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 617
    const-string v11, "</smil>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 618
    .local v2, "index":I
    const-string v11, "SmilSimpleParse"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parserBySax -> index : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v11, 0x0

    add-int/lit8 v12, v2, 0x7

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 620
    const-string v11, "SmilSimpleParse"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parserBySax -> finalStr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .end local v2    # "index":I
    :cond_3
    const/4 v1, 0x0

    .line 624
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v5, 0x0

    .line 625
    .local v5, "parser":Ljavax/xml/parsers/SAXParser;
    const/4 v3, 0x0

    .line 626
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 628
    .local v6, "smilBody":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 630
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 631
    .local v9, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v8, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;-><init>()V

    .line 632
    .local v8, "smilSaxHandler":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
    invoke-interface {v9, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 633
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v11, Lorg/xml/sax/InputSource;

    invoke-direct {v11, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v9, v11}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 635
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->getSmilBody()Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 641
    if-eqz v4, :cond_1

    .line 642
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 636
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "smilSaxHandler":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
    .end local v9    # "xmlReader":Lorg/xml/sax/XMLReader;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v11, "SmilSimpleParse"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parserBySax()-----\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    if-eqz v3, :cond_4

    .line 642
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    move-object v6, v10

    .line 645
    goto/16 :goto_0

    .line 643
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 644
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 640
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 641
    :goto_3
    if-eqz v3, :cond_5

    .line 642
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 645
    :cond_5
    :goto_4
    throw v10

    .line 643
    :catch_3
    move-exception v0

    .line 644
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 640
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "smilSaxHandler":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
    .restart local v9    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 636
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 597
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static updateParts(Lcom/google/android/mms/pdu/PduPart;[BLandroid/content/Context;)Z
    .locals 8
    .param p0, "partSmil"    # Lcom/google/android/mms/pdu/PduPart;
    .param p1, "smilByte"    # [B
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 274
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v3, "values":Landroid/content/ContentValues;
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v7, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 276
    .local v7, "ev":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p1, :cond_0

    .line 277
    const-string v0, "text"

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 280
    .local v6, "count":I
    if-lez v6, :cond_1

    .line 281
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 282
    :cond_1
    if-lez v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
