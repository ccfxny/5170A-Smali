.class public final enum Lcom/android/okhttp/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/Protocol;

.field public static final HTTP2_AND_HTTP_11:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final HTTP2_SPDY3_AND_HTTP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum HTTP_11:Lcom/android/okhttp/Protocol;

.field public static final enum HTTP_2:Lcom/android/okhttp/Protocol;

.field public static final SPDY3_AND_HTTP11:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SPDY_3:Lcom/android/okhttp/Protocol;


# instance fields
.field public final name:Lcom/android/okio/ByteString;

.field public final spdyVariant:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 37
    new-instance v0, Lcom/android/okhttp/Protocol;

    const-string v1, "HTTP_2"

    const-string v2, "HTTP-draft-09/2.0"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    .line 38
    new-instance v0, Lcom/android/okhttp/Protocol;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    .line 39
    new-instance v0, Lcom/android/okhttp/Protocol;

    const-string v1, "HTTP_11"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    .line 36
    new-array v0, v6, [Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/okhttp/Protocol;->$VALUES:[Lcom/android/okhttp/Protocol;

    .line 41
    new-array v0, v6, [Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP2_SPDY3_AND_HTTP:Ljava/util/List;

    .line 43
    new-array v0, v5, [Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/Protocol;->SPDY3_AND_HTTP11:Ljava/util/List;

    .line 45
    new-array v0, v5, [Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP2_AND_HTTP_11:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "spdyVariant"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    invoke-static {p3}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Protocol;->name:Lcom/android/okio/ByteString;

    .line 60
    iput-boolean p4, p0, Lcom/android/okhttp/Protocol;->spdyVariant:Z

    .line 61
    return-void
.end method

.method public static find(Lcom/android/okio/ByteString;)Lcom/android/okhttp/Protocol;
    .locals 7
    .param p0, "input"    # Lcom/android/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    if-nez p0, :cond_1

    sget-object v3, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    .line 71
    :cond_0
    return-object v3

    .line 70
    :cond_1
    invoke-static {}, Lcom/android/okhttp/Protocol;->values()[Lcom/android/okhttp/Protocol;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/okhttp/Protocol;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 71
    .local v3, "protocol":Lcom/android/okhttp/Protocol;
    iget-object v4, v3, Lcom/android/okhttp/Protocol;->name:Lcom/android/okio/ByteString;

    invoke-virtual {v4, p0}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected protocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/Protocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/android/okhttp/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/Protocol;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/okhttp/Protocol;->$VALUES:[Lcom/android/okhttp/Protocol;

    invoke-virtual {v0}, [Lcom/android/okhttp/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/Protocol;

    return-object v0
.end method
