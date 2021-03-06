.class public Lcom/meizu/android/mms/pdu/MzPduPart;
.super Ljava/lang/Object;
.source "MzPduPart.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field static final DISPOSITION_ATTACHMENT:[B

.field static final DISPOSITION_FROM_DATA:[B

.field static final DISPOSITION_INLINE:[B

.field public static final P_7BIT:Ljava/lang/String; = "7bit"

.field public static final P_8BIT:Ljava/lang/String; = "8bit"

.field public static final P_BASE64:Ljava/lang/String; = "base64"

.field public static final P_BINARY:Ljava/lang/String; = "binary"

.field public static final P_CHARSET:I = 0x81

.field public static final P_COMMENT:I = 0x9b

.field public static final P_CONTENT_DISPOSITION:I = 0xc5

.field public static final P_CONTENT_ID:I = 0xc0

.field public static final P_CONTENT_LOCATION:I = 0x8e

.field public static final P_CONTENT_TRANSFER_ENCODING:I = 0xc8

.field public static final P_CONTENT_TYPE:I = 0x91

.field public static final P_CREATION_DATE:I = 0x93

.field public static final P_CT_MR_TYPE:I = 0x89

.field public static final P_DEP_COMMENT:I = 0x8c

.field public static final P_DEP_CONTENT_DISPOSITION:I = 0xae

.field public static final P_DEP_DOMAIN:I = 0x8d

.field public static final P_DEP_FILENAME:I = 0x86

.field public static final P_DEP_NAME:I = 0x85

.field public static final P_DEP_PATH:I = 0x8f

.field public static final P_DEP_START:I = 0x8a

.field public static final P_DEP_START_INFO:I = 0x8b

.field public static final P_DIFFERENCES:I = 0x87

.field public static final P_DISPOSITION_ATTACHMENT:I = 0x81

.field public static final P_DISPOSITION_FROM_DATA:I = 0x80

.field public static final P_DISPOSITION_INLINE:I = 0x82

.field public static final P_DOMAIN:I = 0x9c

.field public static final P_FILENAME:I = 0x98

.field public static final P_LEVEL:I = 0x82

.field public static final P_MAC:I = 0x92

.field public static final P_MAX_AGE:I = 0x8e

.field public static final P_MODIFICATION_DATE:I = 0x94

.field public static final P_NAME:I = 0x97

.field public static final P_PADDING:I = 0x88

.field public static final P_PATH:I = 0x9d

.field public static final P_Q:I = 0x80

.field public static final P_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"

.field public static final P_READ_DATE:I = 0x95

.field public static final P_SEC:I = 0x91

.field public static final P_SECURE:I = 0x90

.field public static final P_SIZE:I = 0x96

.field public static final P_START:I = 0x99

.field public static final P_START_INFO:I = 0x9a

.field public static final P_TYPE:I = 0x83

.field private static final TAG:Ljava/lang/String; = "PduPart"


# instance fields
.field private mPartData:[B

.field private mPartHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "from-data"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPart;->DISPOSITION_FROM_DATA:[B

    .line 99
    const-string v0, "attachment"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPart;->DISPOSITION_ATTACHMENT:[B

    .line 100
    const-string v0, "inline"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPart;->DISPOSITION_INLINE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    .line 117
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mUri:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartData:[B

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    .line 131
    return-void
.end method


# virtual methods
.method public generateLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v3, 0x97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 392
    .local v1, "location":[B
    if-nez v1, :cond_0

    .line 393
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v3, 0x98

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 395
    if-nez v1, :cond_0

    .line 396
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v3, 0x8e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 400
    :cond_0
    if-nez v1, :cond_2

    .line 401
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 402
    .local v0, "contentId":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .end local v0    # "contentId":[B
    :goto_1
    return-object v2

    .line 402
    .restart local v0    # "contentId":[B
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 404
    .end local v0    # "contentId":[B
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1
.end method

.method public getCharset()I
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 236
    .local v0, "charset":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 237
    const/4 v1, 0x0

    .line 239
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getContentDisposition()[B
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getContentId()[B
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getContentLocation()[B
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getContentTransferEncoding()[B
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartData:[B

    if-nez v1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 158
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartData:[B

    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mUri:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilename()[B
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getName()[B
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public setCharset(I)V
    .locals 3
    .param p1, "charset"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public setContentDisposition([B)V
    .locals 2
    .param p1, "contentDisposition"    # [B

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-disposition"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public setContentId([B)V
    .locals 7
    .param p1, "contentId"    # [B

    .prologue
    const/16 v6, 0xc0

    const/16 v5, 0x3e

    const/16 v4, 0x3c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Content-Id may not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_1
    array-length v1, p1

    if-le v1, v3, :cond_2

    aget-byte v1, p1, v2

    int-to-char v1, v1

    if-ne v1, v4, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    if-ne v1, v5, :cond_2

    .line 199
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_2
    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 205
    .local v0, "buffer":[B
    aput-byte v4, v0, v2

    .line 206
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v5, v0, v1

    .line 207
    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 208
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setContentLocation([B)V
    .locals 2
    .param p1, "contentLocation"    # [B

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-location"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public setContentTransferEncoding([B)V
    .locals 2
    .param p1, "contentTransferEncoding"    # [B

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-transfer-encoding"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public setContentType([B)V
    .locals 2
    .param p1, "contentType"    # [B

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

.method public setData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartData:[B

    .line 144
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartData:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public setDataUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mUri:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setFilename([B)V
    .locals 2
    .param p1, "fileName"    # [B

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method public setName([B)V
    .locals 2
    .param p1, "name"    # [B

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method
