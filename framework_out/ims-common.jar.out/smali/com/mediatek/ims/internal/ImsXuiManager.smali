.class public Lcom/mediatek/ims/internal/ImsXuiManager;
.super Ljava/lang/Object;
.source "ImsXuiManager.java"


# static fields
.field static sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;


# instance fields
.field public mXui:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 19
    .local v0, "numPhones":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mediatek/ims/internal/ImsXuiManager;->sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/mediatek/ims/internal/ImsXuiManager;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ImsXuiManager;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/ImsXuiManager;->sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;

    .line 30
    sget-object v0, Lcom/mediatek/ims/internal/ImsXuiManager;->sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ImsXuiManager;->loadXui()V

    .line 32
    :cond_0
    sget-object v0, Lcom/mediatek/ims/internal/ImsXuiManager;->sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;

    return-object v0
.end method

.method private loadXui()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method


# virtual methods
.method public clearStoredXui()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method public getXui()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getXui(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setXui(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "xui"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 74
    return-void
.end method

.method public setXui(Ljava/lang/String;)V
    .locals 2
    .param p1, "xui"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 63
    return-void
.end method
