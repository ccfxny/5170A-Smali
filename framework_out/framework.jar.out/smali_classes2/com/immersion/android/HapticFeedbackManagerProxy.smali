.class public Lcom/immersion/android/HapticFeedbackManagerProxy;
.super Ljava/lang/Object;
.source "HapticFeedbackManagerProxy.java"


# static fields
.field private static final INITIALIZATION_DELAY_MS:I = 0xa

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackManager"

.field private static mContext:Landroid/content/Context;

.field private static volatile sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;


# instance fields
.field private mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field private volatile mInitState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 87
    return-void
.end method

.method static synthetic access$000()Lcom/immersion/android/HapticFeedbackManagerProxy;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/immersion/android/HapticFeedbackManagerProxy;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .param p0, "x0"    # Lcom/immersion/android/HapticFeedbackManagerProxy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Looper;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/HapticFeedbackManagerProxy;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/immersion/android/HapticFeedbackManagerProxy;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    move-object v4, p0

    .line 48
    .local v4, "theContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/immersion/android/HapticFeedbackManagerProxy;->mContext:Landroid/content/Context;

    .line 50
    sget-object v5, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    if-eqz v5, :cond_0

    .line 51
    sget-object v2, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    .line 82
    :goto_0
    return-object v2

    .line 53
    :cond_0
    const-class v6, Lcom/immersion/android/HapticFeedbackManagerProxy;

    monitor-enter v6

    .line 54
    :try_start_0
    sget-object v5, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    if-eqz v5, :cond_1

    .line 55
    sget-object v2, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    .line 79
    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 57
    :cond_1
    :try_start_1
    new-instance v3, Lcom/immersion/android/HapticFeedbackManagerProxy;

    invoke-direct {v3}, Lcom/immersion/android/HapticFeedbackManagerProxy;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .end local v2    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    .local v3, "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    :try_start_2
    sput-object v3, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 65
    .local v1, "looper":Landroid/os/Looper;
    :goto_3
    if-eqz v1, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .local v0, "handler":Landroid/os/Handler;
    :goto_4
    new-instance v5, Lcom/immersion/android/HapticFeedbackManagerProxy$1;

    invoke-direct {v5, v4, v1}, Lcom/immersion/android/HapticFeedbackManagerProxy$1;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    const-wide/16 v8, 0xa

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v2, v3

    .end local v3    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    .restart local v2    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    goto :goto_1

    .line 61
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    .restart local v3    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_3

    .line 65
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 79
    .end local v1    # "looper":Landroid/os/Looper;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    .restart local v2    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    goto :goto_2
.end method

.method private initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x1

    .line 90
    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 92
    :try_start_0
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackManager;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v1, 0x2

    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 100
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 96
    const-string v1, "HapticFeedbackManager"

    const-string v2, "exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->destroy()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 108
    :cond_0
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 2
    .param p1, "effectId"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/immersion/android/HapticFeedbackManagerProxy;->performHapticFeedback(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(IILandroid/view/View;)Z
    .locals 5
    .param p1, "effectId"    # I
    .param p2, "flags"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 120
    iget v2, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 121
    sget-object v4, Lcom/immersion/android/HapticFeedbackManagerProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/immersion/android/HapticFeedbackManagerProxy;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    .line 125
    :cond_0
    iget v2, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    .line 126
    const-string v2, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "HapticFeedbackManager"

    const-string v4, "Trying to call performHapticFeedback(...) on non initialized proxy."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v3

    .line 143
    :goto_1
    return v1

    .line 121
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    .line 132
    :cond_3
    const/4 v1, 0x0

    .line 134
    .local v1, "retVal":Z
    if-eqz p3, :cond_4

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_4

    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 136
    const/4 v1, 0x0

    goto :goto_1

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v2, p1, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public performHapticFeedback(ILandroid/view/View;)Z
    .locals 1
    .param p1, "effectId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/immersion/android/HapticFeedbackManagerProxy;->performHapticFeedback(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method
