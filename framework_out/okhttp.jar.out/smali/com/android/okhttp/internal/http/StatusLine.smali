.class public final Lcom/android/okhttp/internal/http/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field private final httpMinorVersion:I

.field private final responseCode:I

.field private final responseMessage:Ljava/lang/String;

.field private final statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0x9

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v5, "HTTP/1."

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_1

    .line 26
    :cond_0
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 28
    :cond_1
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    .line 29
    .local v2, "httpMinorVersion":I
    const/16 v0, 0x9

    .line 30
    .local v0, "codeStart":I
    if-ltz v2, :cond_2

    if-le v2, v6, :cond_4

    .line 31
    :cond_2
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 33
    .end local v0    # "codeStart":I
    .end local v2    # "httpMinorVersion":I
    :cond_3
    const-string v5, "ICY "

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 35
    const/4 v2, 0x0

    .line 36
    .restart local v2    # "httpMinorVersion":I
    const/4 v0, 0x4

    .line 42
    .restart local v0    # "codeStart":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v0, 0x3

    if-ge v5, v6, :cond_6

    .line 43
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 38
    .end local v0    # "codeStart":I
    .end local v2    # "httpMinorVersion":I
    :cond_5
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    .restart local v0    # "codeStart":I
    .restart local v2    # "httpMinorVersion":I
    :cond_6
    add-int/lit8 v5, v0, 0x3

    :try_start_0
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 54
    .local v3, "responseCode":I
    const-string v4, ""

    .line 55
    .local v4, "responseMessage":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v0, 0x3

    if-le v5, v6, :cond_8

    .line 56
    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_7

    .line 57
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 48
    .end local v3    # "responseCode":I
    .end local v4    # "responseMessage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "responseCode":I
    .restart local v4    # "responseMessage":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v0, 0x4

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    :cond_8
    iput-object v4, p0, Lcom/android/okhttp/internal/http/StatusLine;->responseMessage:Ljava/lang/String;

    .line 63
    iput v3, p0, Lcom/android/okhttp/internal/http/StatusLine;->responseCode:I

    .line 64
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StatusLine;->statusLine:Ljava/lang/String;

    .line 65
    iput v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->httpMinorVersion:I

    .line 66
    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/okhttp/internal/http/StatusLine;->responseCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StatusLine;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public httpMinorVersion()I
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/StatusLine;->httpMinorVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/okhttp/internal/http/StatusLine;->httpMinorVersion:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StatusLine;->responseMessage:Ljava/lang/String;

    return-object v0
.end method
