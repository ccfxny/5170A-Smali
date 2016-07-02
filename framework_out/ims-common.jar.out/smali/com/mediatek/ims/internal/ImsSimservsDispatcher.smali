.class public Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
.super Ljava/lang/Object;
.source "ImsSimservsDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field private static final DUMP_TRANSACTION:Z = true

.field private static final IMC_MAX_XUI_LEN:I = 0x200

.field private static final TAG:Ljava/lang/String; = "ImsSimservsDispatcher"

.field private static sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Ljava/lang/Thread;

.field private mPhone:Landroid/provider/ContactsContract$CommonDataKinds$Phone;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "io"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;-><init>(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandlerThread:Ljava/lang/Thread;

    .line 70
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 72
    sput-object p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    .line 73
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->handleXuiUpdate(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    return-object v0
.end method

.method private handleXuiUpdate(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v2

    .line 128
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v0

    .line 129
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .line 130
    .local v4, "xui":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v3

    .line 132
    .local v3, "phoneId":I
    if-nez v0, :cond_0

    .line 133
    const-string v7, "handleXuiUpdate event.getBytes() = null"

    invoke-static {v7}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 138
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v5, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "xui":Ljava/lang/String;
    .local v5, "xui":Ljava/lang/String;
    move-object v4, v5

    .line 143
    .end local v5    # "xui":Ljava/lang/String;
    .restart local v4    # "xui":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleXuiUpdate xui="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v6

    .line 145
    .local v6, "xuim":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-virtual {v6, v3, v4}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v6    # "xuim":Lcom/mediatek/ims/internal/ImsXuiManager;
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "ImsSimservsDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ims] ImsSimservsDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSimservsDispatcher send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 116
    return-void
.end method


# virtual methods
.method public disableRequest()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public enableRequest()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public setSocket(Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "socket"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 110
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method
