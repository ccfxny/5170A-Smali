.class public Landroid/telephony/MzSmsMessage;
.super Landroid/telephony/SmsMessage;
.source "MzSmsMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmsMessageExt"


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    .line 15
    iput-object p1, p0, Landroid/telephony/MzSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 16
    return-void
.end method

.method public static createFromPduExt([B)Landroid/telephony/MzSmsMessage;
    .locals 1
    .param p0, "pdu"    # [B

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/MzSmsMessage;->createFromPduExt([BZ)Landroid/telephony/MzSmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduExt([BLjava/lang/String;)Landroid/telephony/MzSmsMessage;
    .locals 1
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/MzSmsMessage;->createFromPduExt([BLjava/lang/String;Z)Landroid/telephony/MzSmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduExt([BLjava/lang/String;Z)Landroid/telephony/MzSmsMessage;
    .locals 4
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "decode8Bit"    # Z

    .prologue
    .line 88
    const-string v1, "3gpp2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 98
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/MzSmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/MzSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    return-object v1

    .line 90
    :cond_0
    const-string v1, "3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const/4 v0, 0x0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 94
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string v1, "SmsMessageExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromPduExt([BZ)Landroid/telephony/MzSmsMessage;
    .locals 5
    .param p0, "pdu"    # [B
    .param p1, "decode8Bit"    # Z

    .prologue
    const/4 v4, 0x2

    .line 44
    const/4 v2, 0x0

    .line 48
    .local v2, "message":Landroid/telephony/MzSmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 49
    .local v0, "activePhone":I
    if-ne v4, v0, :cond_2

    const-string v1, "3gpp2"

    .line 51
    .local v1, "format":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1, p1}, Landroid/telephony/MzSmsMessage;->createFromPduExt([BLjava/lang/String;Z)Landroid/telephony/MzSmsMessage;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/telephony/MzSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v3, :cond_1

    .line 55
    :cond_0
    if-ne v4, v0, :cond_3

    const-string v1, "3gpp"

    .line 57
    :goto_1
    invoke-static {p0, v1, p1}, Landroid/telephony/MzSmsMessage;->createFromPduExt([BLjava/lang/String;Z)Landroid/telephony/MzSmsMessage;

    move-result-object v2

    .line 59
    :cond_1
    return-object v2

    .line 49
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    const-string v1, "3gpp"

    goto :goto_0

    .line 55
    .restart local v1    # "format":Ljava/lang/String;
    :cond_3
    const-string v1, "3gpp2"

    goto :goto_1
.end method
