.class public Lcom/android/okhttp/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lcom/android/okhttp/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lcom/android/okhttp/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .locals 7
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "cacheResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 135
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 136
    iput-object p3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    .line 137
    iput-object p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    .line 139
    if-eqz p4, :cond_7

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p4}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 141
    invoke-virtual {p4}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "value":Ljava/lang/String;
    const-string v3, "Date"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 145
    iput-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const-string v3, "Expires"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 148
    :cond_2
    const-string v3, "Last-Modified"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 150
    iput-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_3
    const-string v3, "ETag"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    iput-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 153
    :cond_4
    const-string v3, "Age"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 154
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 155
    :cond_5
    sget-object v3, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_1

    .line 157
    :cond_6
    sget-object v3, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .line 162
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private cacheResponseAge()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 292
    iget-object v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 295
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 298
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 299
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    iget-wide v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v8, v10

    .line 300
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 295
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 263
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v2

    .line 264
    .local v2, "responseCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v2}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 265
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 284
    :cond_0
    :goto_0
    return-wide v6

    .line 266
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v3, :cond_4

    .line 267
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 270
    .local v4, "servedMillis":J
    :goto_1
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 271
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v6, v0

    goto :goto_0

    .line 267
    .end local v4    # "servedMillis":J
    :cond_2
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_3
    move-wide v0, v6

    .line 271
    goto :goto_2

    .line 272
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_4
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 281
    .restart local v4    # "servedMillis":J
    :goto_3
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 282
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    goto :goto_0

    .line 278
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_5
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3
.end method

.method private getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;
    .locals 24

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 189
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/okhttp/ResponseSource;->NETWORK:Lcom/android/okhttp/ResponseSource;

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v23}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    .line 253
    :goto_0
    return-object v19

    .line 193
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v19

    if-nez v19, :cond_1

    .line 194
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/okhttp/ResponseSource;->NETWORK:Lcom/android/okhttp/ResponseSource;

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v23}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 200
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 201
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/okhttp/ResponseSource;->NETWORK:Lcom/android/okhttp/ResponseSource;

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v23}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 204
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v9

    .line 205
    .local v9, "requestCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 206
    :cond_3
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/okhttp/ResponseSource;->NETWORK:Lcom/android/okhttp/ResponseSource;

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v23}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 209
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v4

    .line 210
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v10

    .line 212
    .local v10, "freshMillis":J
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 213
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 216
    :cond_5
    const-wide/16 v14, 0x0

    .line 217
    .local v14, "minFreshMillis":J
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 218
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 221
    :cond_6
    const-wide/16 v12, 0x0

    .line 222
    .local v12, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v18

    .line 223
    .local v18, "responseCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/CacheControl;->mustRevalidate()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 224
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 227
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_a

    add-long v20, v4, v14

    add-long v22, v10, v12

    cmp-long v19, v20, v22

    if-gez v19, :cond_a

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v19

    sget-object v20, Lcom/android/okhttp/ResponseSource;->CACHE:Lcom/android/okhttp/ResponseSource;

    invoke-virtual/range {v19 .. v20}, Lcom/android/okhttp/Response$Builder;->setResponseSource(Lcom/android/okhttp/ResponseSource;)Lcom/android/okhttp/Response$Builder;

    move-result-object v6

    .line 230
    .local v6, "builder":Lcom/android/okhttp/Response$Builder;
    add-long v20, v4, v14

    cmp-long v19, v20, v10

    if-ltz v19, :cond_8

    .line 231
    const-string v19, "Warning"

    const-string v20, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 233
    :cond_8
    const-wide/32 v16, 0x5265c00

    .line 234
    .local v16, "oneDayMillis":J
    cmp-long v19, v4, v16

    if-lez v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 235
    const-string v19, "Warning"

    const-string v20, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 237
    :cond_9
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    const/16 v20, 0x0

    invoke-virtual {v6}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v21

    sget-object v22, Lcom/android/okhttp/ResponseSource;->CACHE:Lcom/android/okhttp/ResponseSource;

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v23}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 240
    .end local v6    # "builder":Lcom/android/okhttp/Response$Builder;
    .end local v16    # "oneDayMillis":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v8

    .line 242
    .local v8, "conditionalRequestBuilder":Lcom/android/okhttp/Request$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 243
    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 248
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 249
    const-string v19, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 252
    :cond_c
    invoke-virtual {v8}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v7

    .line 253
    .local v7, "conditionalRequest":Lcom/android/okhttp/Request;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    move-result v19

    if-eqz v19, :cond_e

    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/android/okhttp/ResponseSource;

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 244
    .end local v7    # "conditionalRequest":Lcom/android/okhttp/Request;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 245
    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_1

    .line 253
    .restart local v7    # "conditionalRequest":Lcom/android/okhttp/Request;
    :cond_e
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    const/16 v20, 0x0

    sget-object v21, Lcom/android/okhttp/ResponseSource;->NETWORK:Lcom/android/okhttp/ResponseSource;

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0
.end method

.method private static hasConditions(Lcom/android/okhttp/Request;)Z
    .locals 1
    .param p0, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 318
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lcom/android/okhttp/internal/http/CacheStrategy;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v0

    .line 171
    .local v0, "candidate":Lcom/android/okhttp/internal/http/CacheStrategy;
    iget-object v2, v0, Lcom/android/okhttp/internal/http/CacheStrategy;->source:Lcom/android/okhttp/ResponseSource;

    sget-object v3, Lcom/android/okhttp/ResponseSource;->CACHE:Lcom/android/okhttp/ResponseSource;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/CacheControl;->onlyIfCached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    new-instance v2, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Response$Builder;-><init>()V

    iget-object v3, v0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    # getter for: Lcom/android/okhttp/internal/http/CacheStrategy;->GATEWAY_TIMEOUT_STATUS_LINE:Lcom/android/okhttp/internal/http/StatusLine;
    invoke-static {}, Lcom/android/okhttp/internal/http/CacheStrategy;->access$100()Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->statusLine(Lcom/android/okhttp/internal/http/StatusLine;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/okhttp/ResponseSource;->NONE:Lcom/android/okhttp/ResponseSource;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->setResponseSource(Lcom/android/okhttp/ResponseSource;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    # getter for: Lcom/android/okhttp/internal/http/CacheStrategy;->EMPTY_BODY:Lcom/android/okhttp/Response$Body;
    invoke-static {}, Lcom/android/okhttp/internal/http/CacheStrategy;->access$000()Lcom/android/okhttp/Response$Body;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/Response$Body;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v1

    .line 179
    .local v1, "noneResponse":Lcom/android/okhttp/Response;
    new-instance v0, Lcom/android/okhttp/internal/http/CacheStrategy;

    .end local v0    # "candidate":Lcom/android/okhttp/internal/http/CacheStrategy;
    sget-object v2, Lcom/android/okhttp/ResponseSource;->NONE:Lcom/android/okhttp/ResponseSource;

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    .line 182
    .end local v1    # "noneResponse":Lcom/android/okhttp/Response;
    :cond_0
    return-object v0
.end method
