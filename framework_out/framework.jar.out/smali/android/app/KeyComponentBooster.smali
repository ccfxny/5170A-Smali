.class Landroid/app/KeyComponentBooster;
.super Ljava/lang/Object;
.source "KeyComponentBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyComponentBooster$1;,
        Landroid/app/KeyComponentBooster$KeyComponentBoosterInstance;
    }
.end annotation


# static fields
.field public static final KEY_COMP_BOOST:Ljava/lang/String; = "KeyComponentBooster"

.field private static final QoS_BALANCE:I = 0x2

.field private static final QoS_PERFORMANCE:I = 0x0

.field private static final QoS_POWER:I = 0x1

.field private static mPerfServiceObject:Ljava/lang/Object;

.field private static sBoostBenchmarkMethod:Ljava/lang/reflect/Method;

.field private static final sComponentNameList:[Ljava/lang/String;

.field private static sGetInstanceMethod:Ljava/lang/reflect/Method;

.field private static sPerfSchedulerMgrClass:Ljava/lang/Class;


# instance fields
.field private DEBUG:Z

.field private initBoostBenchmarkReflectSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyReceiveUI"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyDetailUI"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.alipay.mobile.rome.pushservice.integration.RecvMsgIntentService"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.alipay.android.phone.discovery.envelope.get.SnsCouponDetailActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.tencent.mobileqq.activity.PayBridgeActivity"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/KeyComponentBooster;->sComponentNameList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v6, p0, Landroid/app/KeyComponentBooster;->DEBUG:Z

    .line 29
    iput-boolean v6, p0, Landroid/app/KeyComponentBooster;->initBoostBenchmarkReflectSuccess:Z

    .line 41
    :try_start_0
    const-string v1, "android.os.PerfSchedulerManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/app/KeyComponentBooster;->sPerfSchedulerMgrClass:Ljava/lang/Class;

    .line 42
    sget-object v1, Landroid/app/KeyComponentBooster;->sPerfSchedulerMgrClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Landroid/app/KeyComponentBooster;->sPerfSchedulerMgrClass:Ljava/lang/Class;

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/app/KeyComponentBooster;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 44
    sget-object v1, Landroid/app/KeyComponentBooster;->sPerfSchedulerMgrClass:Ljava/lang/Class;

    const-string v2, "boostBenchmark"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/app/KeyComponentBooster;->sBoostBenchmarkMethod:Ljava/lang/reflect/Method;

    .line 46
    :cond_0
    sget-object v1, Landroid/app/KeyComponentBooster;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, Landroid/app/KeyComponentBooster;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/app/KeyComponentBooster;->sPerfSchedulerMgrClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Landroid/app/KeyComponentBooster;->mPerfServiceObject:Ljava/lang/Object;

    .line 49
    sget-object v1, Landroid/app/KeyComponentBooster;->mPerfServiceObject:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/KeyComponentBooster;->initBoostBenchmarkReflectSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_1
    :goto_0
    const-string/jumbo v1, "persist.perf.kcb.debug"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/KeyComponentBooster;->DEBUG:Z

    .line 58
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyComponentBooster"

    const-string v2, "Failed to intialize PerfSchedulerManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/app/KeyComponentBooster$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/KeyComponentBooster$1;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/KeyComponentBooster;-><init>()V

    return-void
.end method

.method private deviceSupportPerformanceQos()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Landroid/app/KeyComponentBooster;
    .locals 1

    .prologue
    .line 36
    # getter for: Landroid/app/KeyComponentBooster$KeyComponentBoosterInstance;->instance:Landroid/app/KeyComponentBooster;
    invoke-static {}, Landroid/app/KeyComponentBooster$KeyComponentBoosterInstance;->access$100()Landroid/app/KeyComponentBooster;

    move-result-object v0

    return-object v0
.end method

.method private requestQosFor(II)Z
    .locals 8
    .param p1, "qos_type"    # I
    .param p2, "time_out"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v1, v2

    .line 111
    :goto_1
    return v1

    .line 95
    :pswitch_1
    invoke-direct {p0}, Landroid/app/KeyComponentBooster;->deviceSupportPerformanceQos()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    :try_start_0
    iget-boolean v3, p0, Landroid/app/KeyComponentBooster;->initBoostBenchmarkReflectSuccess:Z

    if-eqz v3, :cond_0

    .line 99
    iget-boolean v3, p0, Landroid/app/KeyComponentBooster;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KeyComponentBooster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Qos Performance: Boost for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    sget-object v3, Landroid/app/KeyComponentBooster;->sBoostBenchmarkMethod:Ljava/lang/reflect/Method;

    sget-object v4, Landroid/app/KeyComponentBooster;->mPerfServiceObject:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeyComponentBooster"

    const-string v3, "Failed to invoke boostBenchmark method"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public forPerfCareIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "compClassName":Ljava/lang/String;
    iget-boolean v5, p0, Landroid/app/KeyComponentBooster;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "KeyComponentBooster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forPerfCareIntent - Incoming comp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    sget-object v0, Landroid/app/KeyComponentBooster;->sComponentNameList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 74
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    iget-boolean v5, p0, Landroid/app/KeyComponentBooster;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "KeyComponentBooster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Boost for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x9c4

    invoke-direct {p0, v5, v6}, Landroid/app/KeyComponentBooster;->requestQosFor(II)Z

    .line 73
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "compClassName":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    return-void
.end method
