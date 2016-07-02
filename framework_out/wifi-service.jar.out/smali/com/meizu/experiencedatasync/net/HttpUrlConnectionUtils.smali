.class public Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;
.super Ljava/lang/Object;
.source "HttpUrlConnectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsHostnameVerifier;,
        Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsX509TrustManager;
    }
.end annotation


# static fields
.field private static final APPLICATION_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field private static MULT_BOUNDARY:Ljava/lang/String; = null

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "UsageStats_HttpUrl"

.field private static hnv:Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsHostnameVerifier;

.field private static xtm:Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsX509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v3, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsX509TrustManager;

    invoke-direct {v3}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsX509TrustManager;-><init>()V

    sput-object v3, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->xtm:Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsX509TrustManager;

    .line 42
    new-instance v3, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsHostnameVerifier;

    invoke-direct {v3}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsHostnameVerifier;-><init>()V

    sput-object v3, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->hnv:Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsHostnameVerifier;

    .line 47
    const-string v3, "******"

    sput-object v3, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->MULT_BOUNDARY:Ljava/lang/String;

    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 55
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    sget-object v4, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->xtm:Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsX509TrustManager;

    aput-object v4, v2, v3

    .line 56
    .local v2, "xtmArray":[Ljavax/net/ssl/X509TrustManager;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "xtmArray":[Ljavax/net/ssl/X509TrustManager;
    :goto_0
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 63
    :cond_0
    sget-object v3, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->hnv:Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils$UsageStatsHostnameVerifier;

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 64
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    return-void
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .end local p1    # "encoding":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .restart local p1    # "encoding":Ljava/lang/String;
    :cond_0
    const-string p1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local p1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 344
    if-eqz p1, :cond_0

    .end local p1    # "encoding":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .restart local p1    # "encoding":Ljava/lang/String;
    :cond_0
    const-string p1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local p1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static format(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 321
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "encodedName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 323
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v5, p1}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "encodedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 325
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 323
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 330
    .end local v0    # "encodedName":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 310
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, -0x1

    .line 311
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 312
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static postJsonPart(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 12
    .param p0, "actionUrl"    # Ljava/lang/String;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x3

    .line 159
    const-string v5, ""

    .line 161
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 163
    .local v0, "con":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 164
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 165
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 166
    const-string v8, "POST"

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 167
    const-string v8, "Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v0, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v8, "Charset"

    const-string v9, "UTF-8"

    invoke-virtual {v0, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/16 v8, 0x1000

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 172
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    .local v1, "ds":Ljava/io/DataOutputStream;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 178
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 180
    const-string v8, "UsageStats_HttpUrl"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 181
    const-string v8, "UsageStats_HttpUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v8, "UsageStats_HttpUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 185
    .local v4, "isError":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 186
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v4, :cond_3

    .line 187
    invoke-static {v4}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "ds":Ljava/io/DataOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isError":Ljava/io/InputStream;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    const-string v8, "UsageStats_HttpUrl"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 198
    const-string v8, "UsageStats_HttpUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " actionUrl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    return-object v5

    .line 189
    .restart local v0    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "ds":Ljava/io/DataOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "isError":Ljava/io/InputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_3
    if-eqz v3, :cond_1

    .line 190
    :try_start_1
    invoke-static {v3}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 194
    .end local v0    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "ds":Ljava/io/DataOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isError":Ljava/io/InputStream;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static postMultipart(Ljava/lang/String;[Lcom/meizu/experiencedatasync/net/multipart/Part;)Ljava/lang/String;
    .locals 14
    .param p0, "actionUrl"    # Ljava/lang/String;
    .param p1, "updateData"    # [Lcom/meizu/experiencedatasync/net/multipart/Part;

    .prologue
    const/4 v13, 0x3

    .line 67
    const-string v7, ""

    .line 69
    .local v7, "result":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 70
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 71
    .local v2, "con":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 72
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 73
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 74
    const-string v10, "POST"

    invoke-virtual {v2, v10}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 75
    const-string v10, "Connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v2, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v10, "Charset"

    const-string v11, "UTF-8"

    invoke-virtual {v2, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "multipart/form-data;boundary="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->MULT_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/16 v10, 0x1000

    invoke-virtual {v2, v10}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 80
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 81
    .local v3, "ds":Ljava/io/DataOutputStream;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v8, "sb":Ljava/lang/StringBuffer;
    sget-object v10, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->MULT_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v3, p1, v10}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/meizu/experiencedatasync/net/multipart/Part;[B)V

    .line 83
    const-string v10, "UsageStats_HttpUrl"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 84
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->MULT_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v1, p1, v10}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/meizu/experiencedatasync/net/multipart/Part;[B)V

    .line 86
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v10, "UsageStats_HttpUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 92
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 94
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    .line 95
    .local v6, "isError":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 96
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v6, :cond_3

    .line 97
    invoke-static {v6}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v2    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .end local v3    # "ds":Ljava/io/DataOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isError":Ljava/io/InputStream;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    .end local v9    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    const-string v10, "UsageStats_HttpUrl"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 108
    const-string v10, "UsageStats_HttpUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " actionUrl="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    return-object v7

    .line 99
    .restart local v2    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3    # "ds":Ljava/io/DataOutputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "isError":Ljava/io/InputStream;
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_3
    if-eqz v5, :cond_1

    .line 100
    :try_start_1
    invoke-static {v5}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    .end local v2    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .end local v3    # "ds":Ljava/io/DataOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isError":Ljava/io/InputStream;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 105
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static postStringPart(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .param p0, "actionUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "contentParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x3

    .line 114
    const-string v5, ""

    .line 116
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 118
    .local v0, "con":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 119
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 120
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 121
    const-string v8, "POST"

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 122
    const-string v8, "Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v0, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v8, "Charset"

    const-string v9, "UTF-8"

    invoke-virtual {v0, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/16 v8, 0x1000

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 127
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 128
    .local v1, "ds":Ljava/io/DataOutputStream;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v6, "sb":Ljava/lang/StringBuffer;
    const-string v8, "ISO-8859-1"

    invoke-static {p1, v8}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->format(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 133
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 135
    const-string v8, "UsageStats_HttpUrl"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    const-string v8, "UsageStats_HttpUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v8, "UsageStats_HttpUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 140
    .local v4, "isError":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 141
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v4, :cond_3

    .line 142
    invoke-static {v4}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "ds":Ljava/io/DataOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isError":Ljava/io/InputStream;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    const-string v8, "UsageStats_HttpUrl"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 153
    const-string v8, "UsageStats_HttpUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " actionUrl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    return-object v5

    .line 144
    .restart local v0    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "ds":Ljava/io/DataOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "isError":Ljava/io/InputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_3
    if-eqz v3, :cond_1

    .line 145
    :try_start_1
    invoke-static {v3}, Lcom/meizu/experiencedatasync/net/HttpUrlConnectionUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    .end local v0    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "ds":Ljava/io/DataOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isError":Ljava/io/InputStream;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 150
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
