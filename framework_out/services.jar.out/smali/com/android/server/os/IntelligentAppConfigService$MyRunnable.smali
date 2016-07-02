.class Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
.super Ljava/lang/Object;
.source "IntelligentAppConfigService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/IntelligentAppConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRunnable"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/os/IntelligentAppConfigService;

.field private url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/android/server/os/IntelligentAppConfigService;Landroid/app/job/JobParameters;)V
    .locals 1
    .param p2, "params"    # Landroid/app/job/JobParameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    .line 100
    iput-object p2, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 101
    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 186
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    .line 187
    iget-object v7, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 188
    .local v6, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 189
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 193
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bufferLength":I
    if-lez v1, :cond_2

    .line 194
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 197
    .end local v0    # "buffer":[B
    .end local v1    # "bufferLength":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 198
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "urlConn":Ljava/net/HttpURLConnection;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    const-string v7, "Download file error"

    invoke-static {v7}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    if-eqz v4, :cond_0

    .line 202
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 204
    :cond_0
    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 201
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferLength":I
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_2
    if-eqz v5, :cond_3

    .line 202
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 204
    :cond_3
    if-eqz v3, :cond_4

    .line 205
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v4, v5

    .line 209
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 207
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 210
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 207
    .end local v0    # "buffer":[B
    .end local v1    # "bufferLength":I
    .end local v6    # "urlConn":Ljava/net/HttpURLConnection;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 201
    :goto_3
    if-eqz v4, :cond_5

    .line 202
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 204
    :cond_5
    if-eqz v3, :cond_6

    .line 205
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 209
    :cond_6
    :goto_4
    throw v7

    .line 207
    :catch_3
    move-exception v2

    .line 208
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "urlConn":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    goto :goto_3

    .line 197
    .end local v6    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private downloadJsonFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v4, "stringBuffer":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    .line 227
    iget-object v6, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 228
    .local v5, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 230
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 232
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bufferLength":I
    if-lez v1, :cond_2

    .line 233
    invoke-direct {p0, v0}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->getChars([B)[C

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    .end local v0    # "buffer":[B
    .end local v1    # "bufferLength":I
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "Download file error"

    invoke-static {v6}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    if-eqz v3, :cond_0

    .line 242
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    :cond_1
    :goto_2
    return-object v6

    .line 235
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferLength":I
    .restart local v5    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 241
    if-eqz v3, :cond_1

    .line 242
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 244
    :catch_1
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 244
    .end local v0    # "buffer":[B
    .end local v1    # "bufferLength":I
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 241
    if-eqz v3, :cond_3

    .line 242
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 246
    :cond_3
    :goto_3
    throw v6

    .line 244
    :catch_3
    move-exception v2

    .line 245
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private getChars([B)[C
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 252
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 253
    .local v2, "cs":Ljava/nio/charset/Charset;
    array-length v3, p1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 254
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 256
    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 258
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    return-object v3
.end method

.method private getCommonDowmloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "devicesInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "meizu_perf"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 144
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 145
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 146
    .local v6, "jsonObject2":Lorg/json/JSONObject;
    new-instance v0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;

    iget-object v8, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;-><init>(Lcom/android/server/os/IntelligentAppConfigService;Lcom/android/server/os/IntelligentAppConfigService$1;)V

    .line 147
    .local v0, "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    const-string v8, "product"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->setProduct(Ljava/lang/String;)V

    .line 148
    const-string v8, "url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "jsonObject2":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 155
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    sget-object v8, Landroid/os/BuildExt;->IS_M95:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 156
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 157
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;

    .line 158
    .restart local v0    # "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    invoke-virtual {v0}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->getProduct()Ljava/lang/String;

    move-result-object v8

    const-string v9, "M95"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 159
    invoke-virtual {v0}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v7

    .line 170
    .end local v0    # "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    .end local v3    # "i":I
    :cond_1
    :goto_2
    return-object v7

    .line 156
    .restart local v0    # "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    .end local v0    # "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    .end local v3    # "i":I
    :cond_3
    sget-object v8, Landroid/os/BuildExt;->IS_A02:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 164
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;

    .line 165
    .restart local v0    # "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    invoke-virtual {v0}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->getProduct()Ljava/lang/String;

    move-result-object v8

    const-string v9, "A02"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 166
    invoke-virtual {v0}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 163
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 105
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v4, "systemDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "perf_intelligent_app_config.conf"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v3, "pruductConfigFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 113
    :cond_0
    const-string v5, "http://safe.res.meizu.com/pack/perf_config.json"

    invoke-direct {p0, v5}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->downloadJsonFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 118
    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    invoke-direct {p0, v2}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->getCommonDowmloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "downloadUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 127
    if-eqz v1, :cond_2

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    invoke-direct {p0, v1, v3}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->downloadFile(Ljava/lang/String;Ljava/io/File;)V

    .line 129
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->reloadAppBoostConfig()V

    .line 134
    iget-object v5, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    iget-object v6, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/os/IntelligentAppConfigService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 135
    .end local v1    # "downloadUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v5, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    iget-object v6, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/os/IntelligentAppConfigService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 131
    .restart local v1    # "downloadUrl":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    iget-object v6, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/os/IntelligentAppConfigService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0
.end method
