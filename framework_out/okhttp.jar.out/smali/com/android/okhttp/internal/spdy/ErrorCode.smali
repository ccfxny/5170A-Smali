.class public final enum Lcom/android/okhttp/internal/spdy/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/internal/spdy/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum COMPRESSION_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum FRAME_TOO_LARGE:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum INVALID_CREDENTIALS:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum STREAM_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum STREAM_IN_USE:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/spdy/ErrorCode;


# instance fields
.field public final httpCode:I

.field public final spdyGoAwayCode:I

.field public final spdyRstCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 7
    new-instance v0, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v1, "NO_ERROR"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 9
    new-instance v5, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v6, "PROTOCOL_ERROR"

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 12
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "INVALID_STREAM"

    move v10, v14

    move v11, v7

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 15
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "UNSUPPORTED_VERSION"

    const/4 v12, 0x4

    move v10, v15

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 18
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "STREAM_IN_USE"

    const/4 v10, 0x4

    const/16 v12, 0x8

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 21
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "STREAM_ALREADY_CLOSED"

    const/4 v10, 0x5

    const/16 v12, 0x9

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 23
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "INTERNAL_ERROR"

    const/4 v10, 0x6

    const/4 v12, 0x6

    move v11, v14

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 25
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x7

    const/4 v12, 0x7

    move v11, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 27
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "STREAM_CLOSED"

    const/16 v10, 0x8

    const/4 v11, 0x5

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 29
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "FRAME_TOO_LARGE"

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xb

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->FRAME_TOO_LARGE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 31
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "REFUSED_STREAM"

    const/16 v10, 0xa

    const/4 v11, 0x7

    move v12, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 33
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "CANCEL"

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/4 v12, 0x5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 35
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "COMPRESSION_ERROR"

    const/16 v10, 0xc

    const/16 v11, 0x9

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->COMPRESSION_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 37
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    const-string v9, "INVALID_CREDENTIALS"

    const/16 v10, 0xd

    const/16 v12, 0xa

    move v11, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_CREDENTIALS:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 5
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/ErrorCode;

    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->FRAME_TOO_LARGE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->COMPRESSION_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_CREDENTIALS:Lcom/android/okhttp/internal/spdy/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->$VALUES:[Lcom/android/okhttp/internal/spdy/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "httpCode"    # I
    .param p4, "spdyRstCode"    # I
    .param p5, "spdyGoAwayCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/android/okhttp/internal/spdy/ErrorCode;->httpCode:I

    .line 45
    iput p4, p0, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    .line 46
    iput p5, p0, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    .line 47
    return-void
.end method

.method public static fromHttp2(I)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/android/okhttp/internal/spdy/ErrorCode;->values()[Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/okhttp/internal/spdy/ErrorCode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 58
    .local v1, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    iget v4, v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_0

    .line 60
    .end local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :goto_1
    return-object v1

    .line 57
    .restart local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static fromSpdy3Rst(I)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/android/okhttp/internal/spdy/ErrorCode;->values()[Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/okhttp/internal/spdy/ErrorCode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 51
    .local v1, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    iget v4, v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    if-ne v4, p0, :cond_0

    .line 53
    .end local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :goto_1
    return-object v1

    .line 50
    .restart local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static fromSpdyGoAway(I)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 64
    invoke-static {}, Lcom/android/okhttp/internal/spdy/ErrorCode;->values()[Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/okhttp/internal/spdy/ErrorCode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 65
    .local v1, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    iget v4, v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    if-ne v4, p0, :cond_0

    .line 67
    .end local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :goto_1
    return-object v1

    .line 64
    .restart local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/spdy/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->$VALUES:[Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0}, [Lcom/android/okhttp/internal/spdy/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/spdy/ErrorCode;

    return-object v0
.end method
