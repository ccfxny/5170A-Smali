.class Lcom/android/server/os/BoostInfo;
.super Ljava/lang/Object;
.source "BoostInfo.java"


# static fields
.field static final BOOST_LIST_OBTAIN:Ljava/lang/String; = "ListObtainBoost"

.field static final BOOST_POWER_MODE_HIGH:Ljava/lang/String; = "PowerModeHigh"

.field static final BOOST_POWER_MODE_LOW:Ljava/lang/String; = "PowerModeLow"

.field static final BOOST_POWER_MODE_NORMAL:Ljava/lang/String; = "PowerModeNormal"

.field static final BOOST_RESUME:Ljava/lang/String; = "AppResume"

.field static final BOOST_TOUCH:Ljava/lang/String; = "TouchBoost"

.field private static OFFEST:I

.field public static SPLIT_LIMIT:I


# instance fields
.field private mBoostName:Ljava/lang/String;

.field private mConfigArrays:[Ljava/lang/String;

.field private mConfigString:Ljava/lang/String;

.field private mFinalArrays:[Ljava/lang/String;

.field private mFinalArraysWithTimeout:[Ljava/lang/String;

.field private mIsGame:Z

.field private mTimeout:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 32
    sput v0, Lcom/android/server/os/BoostInfo;->OFFEST:I

    .line 33
    sput v0, Lcom/android/server/os/BoostInfo;->SPLIT_LIMIT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "boostValue"    # Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/os/BoostInfo;->mIsGame:Z

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configarrange ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-direct {p0, p2}, Lcom/android/server/os/BoostInfo;->updateTimeout(Ljava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/os/BoostInfo;->convertArrayFormat([Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "boostName"    # Ljava/lang/String;
    .param p2, "boostValue"    # Ljava/lang/String;
    .param p3, "timeout"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/os/BoostInfo;->mIsGame:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " configarrange ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/server/os/BoostInfo;->mBoostName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    .line 52
    if-eqz p3, :cond_0

    .line 53
    invoke-direct {p0, p3}, Lcom/android/server/os/BoostInfo;->updateTimeout(Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/os/BoostInfo;->convertArrayFormat([Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private convertArrayFormat([Ljava/lang/String;)V
    .locals 5
    .param p1, "configArrays"    # [Ljava/lang/String;

    .prologue
    .line 80
    array-length v2, p1

    div-int/lit8 v1, v2, 0x3

    .line 81
    .local v1, "newArrayLength":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v0, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private convertArrayFormatWithTimeout([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configArrays"    # [Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;

    .prologue
    .line 112
    array-length v2, p1

    div-int/lit8 v1, v2, 0x3

    .line 113
    .local v1, "newArrayLength":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArraysWithTimeout:[Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArraysWithTimeout:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v0, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private updateTimeout(Ljava/lang/String;)V
    .locals 2
    .param p1, "timeout"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 67
    sget v1, Lcom/android/server/os/BoostInfo;->OFFEST:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method getBoostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mBoostName:Ljava/lang/String;

    return-object v0
.end method

.method getDisableBoostConfigForGame(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "timeout"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/os/BoostInfo;->mIsGame:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/os/BoostInfo;->convertArrayFormatWithTimeout([Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/os/BoostInfo;->mIsGame:Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mFinalArraysWithTimeout:[Ljava/lang/String;

    return-object v0
.end method

.method getFinalBoostConfig()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    return-object v0
.end method
