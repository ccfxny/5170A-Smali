.class public Lcom/mediatek/ims/internal/CallControlDispatcher;
.super Ljava/lang/Object;
.source "CallControlDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field public static final ACTION_IMS_CONFERENCE_CALL_INDICATION:Ljava/lang/String; = "android.intent.action.ims.conference"

.field public static final ACTION_LTE_MESSAGE_WAITING_INDICATION:Ljava/lang/String; = "android.intent.action.lte.mwi"

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "call.id"

.field public static final EXTRA_LTE_MWI_BODY:Ljava/lang/String; = "lte_mwi_body"

.field public static final EXTRA_MESSAGE_CONTENT:Ljava/lang/String; = "message.content"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone.id"

.field private static final IMC_PROGRESS_NOTIFY_CONFERENCE:I = 0x101

.field private static final IMC_PROGRESS_NOTIFY_MWI:I = 0x102

.field private static final TAG:Ljava/lang/String; = "[CallControlDispatcher]"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 35
    return-void
.end method

.method private getDataLength([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "originLen"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 100
    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    .line 105
    :cond_0
    return v0

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public disableRequest()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "[CallControlDispatcher]"

    const-string v1, "disableRequest()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public enableRequest()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "[CallControlDispatcher]"

    const-string v1, "enableRequest()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v8

    .line 56
    .local v8, "requestId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v6

    .line 57
    .local v6, "len":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v1

    .line 58
    .local v1, "callId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v7

    .line 59
    .local v7, "phoneId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v9

    .line 60
    .local v9, "serviceId":I
    const/16 v10, 0xfa0

    invoke-virtual {p1, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v0

    .line 61
    .local v0, "byteData":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 62
    .local v2, "data":Ljava/lang/String;
    const/16 v10, 0xfa0

    invoke-direct {p0, v0, v10}, Lcom/mediatek/ims/internal/CallControlDispatcher;->getDataLength([BI)I

    move-result v6

    .line 63
    const-string v10, "[CallControlDispatcher]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", callId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", serviceId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", data = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    packed-switch v9, :pswitch_data_0

    .line 86
    const-string v10, "[CallControlDispatcher]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unkonwn serviceId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "byteData":[B
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "phoneId":I
    .end local v8    # "requestId":I
    .end local v9    # "serviceId":I
    :goto_0
    return-void

    .line 70
    .restart local v0    # "byteData":[B
    .restart local v1    # "callId":I
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v6    # "len":I
    .restart local v7    # "phoneId":I
    .restart local v8    # "requestId":I
    .restart local v9    # "serviceId":I
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.lte.mwi"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "lte_mwi_body"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v10, "phone.id"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget-object v10, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    const-string v10, "[CallControlDispatcher]"

    const-string v11, "Message Waiting Message is sent."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0    # "byteData":[B
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "len":I
    .end local v7    # "phoneId":I
    .end local v8    # "requestId":I
    .end local v9    # "serviceId":I
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteData":[B
    .restart local v1    # "callId":I
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v6    # "len":I
    .restart local v7    # "phoneId":I
    .restart local v8    # "requestId":I
    .restart local v9    # "serviceId":I
    :pswitch_1
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.ims.conference"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v5, "intent1":Landroid/content/Intent;
    const-string v10, "message.content"

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v10, "call.id"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v10, "phone.id"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v10, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    const-string v10, "[CallControlDispatcher]"

    const-string v11, "Conference call XML message is sent."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
