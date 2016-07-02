.class public Lcom/android/server/am/ActivitySplitModeManager;
.super Ljava/lang/Object;
.source "ActivitySplitModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;,
        Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;
    }
.end annotation


# static fields
.field static final BIND_SERVICE:I = 0x1

.field static final HIDE_FLOAT_VIEW:I = 0x4

.field private static final MAX_SPLIT_GROUP:I = 0x4

.field static final SHOW_FLOAT_VIEW:I = 0x3

.field static final SPLIT_LOC_CONTROLLER_COMPONENT:Landroid/content/ComponentName;

.field static final SPLIT_LOC_CONTROLLER_PACKAGE:Ljava/lang/String; = "com.meizu.splitloccontroller"

.field public static final SPLIT_LOC_DOWN:I = 0x2

.field public static final SPLIT_LOC_UP:I = 0x1

.field public static final SPLIT_NODEF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "splitwin"

.field public static final TRANSIT_SPLIT_WINDOW_CLOSE:I = 0xf

.field public static final TRANSIT_SPLIT_WINDOW_OPEN:I = 0xe

.field static final UNBIND_SERVICE:I = 0x2

.field static final UPDATE_FLOAT_LOC:I = 0x5


# instance fields
.field isImeShowed:Z

.field private lockResizeActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

.field private mCurGroupId:I

.field private mCurrentSplitLoc:I

.field private mIsSplitMode:Z

.field public mLastRemoveTask:Lcom/android/server/am/TaskRecord;

.field private mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSplitConnection:Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;

.field private mSplitTaskGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskSplitGroup;",
            ">;"
        }
    .end annotation
.end field

.field private resumeDirectActivity:Lcom/android/server/am/ActivityRecord;

.field shouldDisableResize:Z

.field private splitHandler:Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.splitloccontroller"

    const-string v2, "com.meizu.splitloccontroller.SplitLocControllerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActivitySplitModeManager;->SPLIT_LOC_CONTROLLER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    .line 45
    iput-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    .line 47
    iput-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->resumeDirectActivity:Lcom/android/server/am/ActivityRecord;

    .line 56
    iput-boolean v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mIsSplitMode:Z

    .line 57
    iput-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 59
    iput-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mLastRemoveTask:Lcom/android/server/am/TaskRecord;

    .line 63
    iput v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurGroupId:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    .line 1027
    new-instance v0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;-><init>(Lcom/android/server/am/ActivitySplitModeManager;)V

    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitConnection:Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;

    .line 1029
    iput-boolean v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z

    .line 1246
    iput-boolean v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->isImeShowed:Z

    .line 1397
    iput-boolean v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->shouldDisableResize:Z

    .line 74
    iput-object p1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 75
    new-instance v0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;-><init>(Lcom/android/server/am/ActivitySplitModeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->splitHandler:Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivitySplitModeManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivitySplitModeManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/ActivitySplitModeManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivitySplitModeManager;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivitySplitModeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivitySplitModeManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->disconnectService()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivitySplitModeManager;)Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivitySplitModeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitConnection:Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivitySplitModeManager;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivitySplitModeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private addSplitGroup()Lcom/android/server/am/TaskSplitGroup;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 546
    const/4 v6, 0x0

    .line 547
    .local v6, "screenSize":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v10, :cond_0

    .line 548
    iget-object v10, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getScreenSize()Landroid/graphics/Point;

    move-result-object v6

    .line 550
    :cond_0
    const/4 v4, 0x0

    .line 551
    .local v4, "loc":I
    if-eqz v6, :cond_1

    .line 552
    iget v10, v6, Landroid/graphics/Point;->x:I

    iget v11, v6, Landroid/graphics/Point;->y:I

    if-le v10, v11, :cond_5

    iget v10, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v10, 0x2

    .line 554
    :cond_1
    :goto_0
    new-instance v9, Lcom/android/server/am/TaskSplitGroup;

    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getNextGroupId()I

    move-result v10

    invoke-direct {v9, v10, v4}, Lcom/android/server/am/TaskSplitGroup;-><init>(II)V

    .line 555
    .local v9, "tg":Lcom/android/server/am/TaskSplitGroup;
    iget-object v10, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9, v10}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 556
    iput v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    .line 557
    iget-object v10, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 558
    .local v7, "size":I
    const/4 v10, 0x4

    if-lt v7, v10, :cond_8

    .line 559
    iget-object v10, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskSplitGroup;

    .line 560
    .local v5, "removeTg":Lcom/android/server/am/TaskSplitGroup;
    invoke-virtual {v5}, Lcom/android/server/am/TaskSplitGroup;->getGroupTasks()[Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 562
    .local v8, "taskList":[Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_7

    array-length v10, v8

    if-lez v10, :cond_7

    .line 563
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v8

    if-ge v2, v10, :cond_7

    .line 564
    aget-object v10, v8, v2

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 565
    .local v1, "activtySize":I
    if-lez v1, :cond_6

    .line 566
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 567
    aget-object v10, v8, v2

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 568
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-lez v10, :cond_4

    .line 570
    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_2

    .line 571
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v10, v11}, Landroid/app/IApplicationThread;->scheduleActivitySplitModeExit(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :cond_2
    :goto_3
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setSplitmode(Z)V

    .line 577
    iget-boolean v10, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v10, :cond_3

    .line 578
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v10, v12}, Lcom/android/server/am/ActivitySplitModeManager;->setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V

    .line 580
    :cond_3
    invoke-virtual {p0, v0, v12}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V

    .line 566
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 552
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "activtySize":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "removeTg":Lcom/android/server/am/TaskSplitGroup;
    .end local v7    # "size":I
    .end local v8    # "taskList":[Lcom/android/server/am/TaskRecord;
    .end local v9    # "tg":Lcom/android/server/am/TaskSplitGroup;
    :cond_5
    iget v10, v6, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v10, 0x2

    goto :goto_0

    .line 563
    .restart local v1    # "activtySize":I
    .restart local v2    # "i":I
    .restart local v5    # "removeTg":Lcom/android/server/am/TaskSplitGroup;
    .restart local v7    # "size":I
    .restart local v8    # "taskList":[Lcom/android/server/am/TaskRecord;
    .restart local v9    # "tg":Lcom/android/server/am/TaskSplitGroup;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 586
    .end local v1    # "activtySize":I
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v5}, Lcom/android/server/am/TaskSplitGroup;->finishSplitGroup()V

    .line 587
    iget-object v10, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v5    # "removeTg":Lcom/android/server/am/TaskSplitGroup;
    .end local v8    # "taskList":[Lcom/android/server/am/TaskRecord;
    :goto_4
    return-object v9

    .line 589
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 573
    .restart local v0    # "a":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "activtySize":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "removeTg":Lcom/android/server/am/TaskSplitGroup;
    .restart local v8    # "taskList":[Lcom/android/server/am/TaskRecord;
    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method private disconnectService()V
    .locals 2

    .prologue
    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    .line 1088
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitConnection:Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1089
    return-void
.end method

.method private getNextGroupId()I
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurGroupId:I

    if-gez v0, :cond_0

    .line 992
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurGroupId:I

    .line 994
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurGroupId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurGroupId:I

    .line 995
    iget v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurGroupId:I

    return v0
.end method

.method private getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    move-object v0, v2

    .line 542
    :cond_0
    :goto_0
    return-object v0

    .line 536
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 537
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskSplitGroup;

    .line 538
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskSplitGroup;->hasSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "group":Lcom/android/server/am/TaskSplitGroup;
    :cond_2
    move-object v0, v2

    .line 542
    goto :goto_0
.end method

.method private getTopRunningGroup()Lcom/android/server/am/TaskSplitGroup;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 503
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 504
    .local v2, "size":I
    if-gtz v2, :cond_1

    move-object v0, v3

    .line 513
    :cond_0
    :goto_0
    return-object v0

    .line 507
    :cond_1
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 508
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskSplitGroup;

    .line 509
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 507
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "group":Lcom/android/server/am/TaskSplitGroup;
    :cond_3
    move-object v0, v3

    .line 513
    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "splitwin"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private removeTaskExcept(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 7
    .param p1, "keepResume"    # Lcom/android/server/am/TaskRecord;
    .param p2, "exit"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1181
    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-nez v5, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1187
    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v5}, Lcom/android/server/am/TaskSplitGroup;->getGroupTasks()[Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 1188
    .local v4, "taskList":[Lcom/android/server/am/TaskRecord;
    array-length v3, v4

    .line 1189
    .local v3, "size":I
    const/4 v2, 0x0

    .line 1190
    .local v2, "shouldReturnToHome":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->checkAndMoveSplitTask(Lcom/android/server/am/TaskRecord;)V

    .line 1191
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1192
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    .line 1193
    iget-object v5, p2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStack;->pausingActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1195
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 1196
    if-nez v2, :cond_3

    .line 1197
    aget-object v5, v4, v1

    iget v5, v5, Lcom/android/server/am/TaskRecord;->splitMode:I

    iget v6, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v5, v6, :cond_3

    .line 1198
    aget-object v2, v4, v1

    .line 1201
    :cond_3
    aget-object v5, v4, v1

    if-eq v5, p1, :cond_5

    .line 1202
    aget-object v5, v4, v1

    iget-boolean v5, v5, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    if-eqz v5, :cond_4

    .line 1205
    :cond_4
    aget-object v5, v4, v1

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivitySplitModeManager;->removeTaskInGroup(Lcom/android/server/am/TaskRecord;)V

    .line 1195
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1208
    :cond_6
    if-eqz v2, :cond_0

    .line 1209
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_0
.end method

.method private resumeGroupIfNeeded(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 294
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->resumeSplitGroup()V

    .line 296
    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    .line 297
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "screenSize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 303
    .local v1, "loc":I
    if-eqz v2, :cond_1

    .line 304
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_3

    iget v3, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v3, 0x2

    .line 306
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 307
    iput v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    .line 308
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v3, v1}, Lcom/android/server/am/TaskSplitGroup;->setCurrentSplitLoc(I)V

    .line 313
    .end local v1    # "loc":I
    .end local v2    # "screenSize":Landroid/graphics/Point;
    :cond_2
    :goto_1
    return-void

    .line 304
    .restart local v1    # "loc":I
    .restart local v2    # "screenSize":Landroid/graphics/Point;
    :cond_3
    iget v3, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v3, 0x2

    goto :goto_0

    .line 310
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v3}, Lcom/android/server/am/TaskSplitGroup;->getCurrentSplitLoc()I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    goto :goto_1
.end method


# virtual methods
.method public addSplitTask(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "com.meizu.camera"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->setAppSplitConfig(Lcom/android/server/am/ActivityRecord;)V

    .line 96
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningGroup()Lcom/android/server/am/TaskSplitGroup;

    move-result-object v1

    .line 98
    .local v1, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 99
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->removeTaskInGroup(Lcom/android/server/am/TaskRecord;)V

    .line 100
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->addSplitTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_0

    .line 104
    .end local v1    # "group":Lcom/android/server/am/TaskSplitGroup;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->setSplitMode(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->showFloatView()V

    .line 106
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivitySplitModeManager;->setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V

    .line 107
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->resumeGroupIfNeeded(Lcom/android/server/am/TaskRecord;)V

    .line 108
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->updateReturnTypeForSplitModeIfNeeded(Lcom/android/server/am/TaskRecord;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->checkAndMoveSplitTask(Lcom/android/server/am/ActivityRecord;)V

    .line 110
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getSplitMode()Z

    move-result v0

    .line 115
    .local v0, "activitySplitMode":Z
    if-eqz v0, :cond_4

    .line 120
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->addSplitTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->pauseGroupIfNeeded()V

    goto :goto_0
.end method

.method public addSplitTask(Lcom/android/server/am/TaskRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningGroup()Lcom/android/server/am/TaskSplitGroup;

    move-result-object v1

    .line 136
    .local v1, "group":Lcom/android/server/am/TaskSplitGroup;
    if-nez v1, :cond_3

    .line 137
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->addSplitGroup()Lcom/android/server/am/TaskSplitGroup;

    move-result-object v1

    .line 138
    iput-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    .line 139
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 142
    :cond_3
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskSplitGroup;->addSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    .line 144
    .local v3, "success":Z
    if-eqz v3, :cond_4

    .line 146
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 147
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivitySplitModeManager;->setSplitMode(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->showFloatView()V

    .line 149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 150
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 151
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivitySplitModeManager;->setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivitySplitModeManager;->setAppSplitConfig(Lcom/android/server/am/ActivityRecord;)V

    .line 153
    iget v4, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "i":I
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivitySplitModeManager;->setSplitMode(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->hideFloatView()V

    .line 159
    iget-boolean v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z

    if-eqz v4, :cond_5

    .line 160
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->splitHandler:Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->sendEmptyMessage(I)Z

    .line 162
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/am/TaskSplitGroup;->pauseSplitGroup()V

    .line 163
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    goto :goto_0
.end method

.method public checkAndEnableResize()V
    .locals 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->shouldDisableResize:Z

    .line 1435
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    if-eqz v0, :cond_0

    .line 1437
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmeizu/splitmode/ISplitLocControllerService;->setResizeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1438
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkAndMoveSplitTask(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v2

    .line 211
    .local v2, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v2}, Lcom/android/server/am/TaskSplitGroup;->getFirstResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 215
    .local v0, "focusTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    .line 218
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 219
    .local v1, "focusTopRunningActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_0

    .line 220
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->checkAndMoveSplitTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_0
.end method

.method public checkAndMoveSplitTask(Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 226
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskSplitGroup;->isSecondResumeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->updateFocusSplitTask()V

    .line 228
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 229
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->updateFloatFocus()V

    .line 231
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->moveSplitTaskToFront(Lcom/android/server/am/TaskRecord;)V

    .line 234
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method public disableResize(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1400
    if-nez p1, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1404
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1408
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1410
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->shouldDisableResize:Z

    .line 1411
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    if-eqz v1, :cond_0

    .line 1413
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lmeizu/splitmode/ISplitLocControllerService;->setResizeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1414
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSplitMode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mIsSplitMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResumedGroup Id == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v2}, Lcom/android/server/am/TaskSplitGroup;->getGroupId()I

    move-result v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 974
    const-string v2, "no gourp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    :cond_0
    return-void

    .line 972
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 977
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 978
    const-string v2, "some activity disable resize."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 980
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 982
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 984
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 985
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskSplitGroup;

    .line 986
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskSplitGroup;->dump(Ljava/io/PrintWriter;)V

    .line 984
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public exchangeSplitTask()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 778
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningGroup()Lcom/android/server/am/TaskSplitGroup;

    move-result-object v2

    .line 779
    .local v2, "group":Lcom/android/server/am/TaskSplitGroup;
    if-nez v2, :cond_0

    .line 780
    const/4 v2, 0x0

    .line 809
    :goto_0
    return-void

    .line 783
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/TaskSplitGroup;->getGroupTasks()[Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 784
    .local v4, "tasks":[Lcom/android/server/am/TaskRecord;
    array-length v5, v4

    if-gtz v5, :cond_1

    .line 785
    const/4 v2, 0x0

    .line 786
    const/4 v4, 0x0

    .line 787
    goto :goto_0

    .line 789
    :cond_1
    const/4 v3, 0x0

    .local v3, "taskIdx":I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 790
    const/4 v1, 0x0

    .local v1, "activityIdx":I
    :goto_2
    aget-object v5, v4, v3

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 791
    aget-object v5, v4, v3

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 792
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    aget-object v5, v4, v3

    iget v5, v5, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v5, v6, :cond_3

    .line 793
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v5, v7}, Lcom/android/server/am/ActivitySplitModeManager;->setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V

    .line 794
    invoke-virtual {p0, v0, v7}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V

    .line 790
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 795
    :cond_3
    aget-object v5, v4, v3

    iget v5, v5, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v5, v7, :cond_2

    .line 796
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivitySplitModeManager;->setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V

    .line 797
    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V

    goto :goto_3

    .line 800
    .end local v0    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    aget-object v5, v4, v3

    iget v5, v5, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v5, v6, :cond_6

    .line 801
    aget-object v5, v4, v3

    iput v7, v5, Lcom/android/server/am/TaskRecord;->splitMode:I

    .line 789
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 802
    :cond_6
    aget-object v5, v4, v3

    iget v5, v5, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v5, v7, :cond_5

    .line 803
    aget-object v5, v4, v3

    iput v6, v5, Lcom/android/server/am/TaskRecord;->splitMode:I

    goto :goto_4

    .line 806
    .end local v1    # "activityIdx":I
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->updateForExchangeSplitActivity()V

    .line 807
    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v8, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 808
    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    goto :goto_0
.end method

.method public exitSplitMode(I)V
    .locals 8
    .param p1, "keepResume"    # I

    .prologue
    .line 1157
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-nez v6, :cond_0

    .line 1178
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 1161
    const/4 v3, 0x0

    .line 1162
    .local v3, "keepTask":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    .line 1163
    .local v1, "exitTask":Lcom/android/server/am/TaskRecord;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v6}, Lcom/android/server/am/TaskSplitGroup;->getFirstResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 1164
    .local v2, "firstTask":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v6}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 1165
    .local v4, "secondTask":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x0

    .line 1166
    .local v5, "upTask":Lcom/android/server/am/TaskRecord;
    const/4 v0, 0x0

    .line 1167
    .local v0, "downTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 1168
    iget v6, v2, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v6, p1, :cond_2

    .line 1169
    move-object v3, v2

    .line 1170
    move-object v1, v4

    .line 1176
    :cond_1
    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivitySplitModeManager;->removeTaskExcept(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1177
    monitor-exit v7

    goto :goto_0

    .end local v0    # "downTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "firstTask":Lcom/android/server/am/TaskRecord;
    .end local v4    # "secondTask":Lcom/android/server/am/TaskRecord;
    .end local v5    # "upTask":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1171
    .restart local v0    # "downTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "firstTask":Lcom/android/server/am/TaskRecord;
    .restart local v4    # "secondTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "upTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    :try_start_1
    iget v6, v4, Lcom/android/server/am/TaskRecord;->splitMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, p1, :cond_1

    .line 1172
    move-object v1, v2

    .line 1173
    move-object v3, v4

    goto :goto_1
.end method

.method public getActivitySplitRectLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1357
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return v3

    .line 1360
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 1361
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->getCurrentSplitLoc()I

    move-result v1

    .line 1363
    .local v1, "loc":I
    const/4 v2, 0x0

    .line 1364
    .local v2, "screenSize":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_2

    .line 1365
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    .line 1367
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_8

    .line 1368
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v4, v5, :cond_5

    .line 1369
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 1370
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 1371
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 1372
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/graphics/Point;->y:I

    :cond_3
    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_1
    move v3, v5

    .line 1392
    goto :goto_0

    .line 1373
    :cond_5
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v4, v6, :cond_4

    .line 1374
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 1375
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 1376
    if-eqz v2, :cond_7

    iget v4, v2, Landroid/graphics/Point;->x:I

    :goto_2
    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 1377
    if-eqz v2, :cond_6

    iget v3, v2, Landroid/graphics/Point;->y:I

    :cond_6
    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_7
    move v4, v3

    .line 1376
    goto :goto_2

    .line 1379
    :cond_8
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_4

    .line 1380
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v4, v5, :cond_a

    .line 1381
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 1382
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 1383
    if-eqz v2, :cond_9

    iget v3, v2, Landroid/graphics/Point;->x:I

    :cond_9
    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 1384
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1385
    :cond_a
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v4, v6, :cond_4

    .line 1386
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 1387
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 1388
    if-eqz v2, :cond_c

    iget v4, v2, Landroid/graphics/Point;->x:I

    :goto_3
    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 1389
    if-eqz v2, :cond_b

    iget v3, v2, Landroid/graphics/Point;->y:I

    :cond_b
    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_c
    move v4, v3

    .line 1388
    goto :goto_3
.end method

.method public getAnotherSplitTaskIdInGroups(I)I
    .locals 3
    .param p1, "taskId"    # I

    .prologue
    .line 519
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 520
    const/4 v0, -0x1

    .line 529
    :cond_0
    return v0

    .line 522
    :cond_1
    const/4 v0, -0x1

    .line 523
    .local v0, "anotherTaskId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskSplitGroup;->getAnotherSplitTaskId(I)I

    move-result v0

    .line 525
    if-gtz v0, :cond_0

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getResumeDirectActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->resumeDirectActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method public getResumeDownConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->getDownConfig()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResumeUpConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->getUpConfig()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitActivityNeedPause(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "nextPause"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 480
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 499
    :cond_0
    :goto_0
    return-object v0

    .line 483
    :cond_1
    if-nez p2, :cond_2

    move-object v0, v3

    .line 484
    goto :goto_0

    .line 486
    :cond_2
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v1

    .line 487
    .local v1, "group":Lcom/android/server/am/TaskSplitGroup;
    if-nez v1, :cond_3

    move-object v0, v3

    .line 488
    goto :goto_0

    .line 490
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v4}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 491
    invoke-virtual {v1}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 492
    .local v2, "secondTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_4

    .line 493
    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 494
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    .end local v0    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "secondTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    move-object v0, v3

    .line 499
    goto :goto_0
.end method

.method public getSplitActivityNeedResume(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 337
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-object v3

    .line 340
    :cond_1
    const/4 v4, 0x0

    .line 341
    .local v4, "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_1
    if-ltz v5, :cond_2

    .line 342
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6, p2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 343
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_4

    .line 344
    move-object v4, v1

    .line 348
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eqz v4, :cond_0

    .line 351
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 352
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivitySplitModeManager;->isTaskSplitFocused(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_3

    .line 357
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 358
    .local v2, "secondTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2, p2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 359
    .local v3, "secondTopRunningActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_0

    .end local v2    # "secondTask":Lcom/android/server/am/TaskRecord;
    .end local v3    # "secondTopRunningActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object v3, v4

    .line 364
    goto :goto_0

    .line 341
    .end local v0    # "group":Lcom/android/server/am/TaskSplitGroup;
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public getTopRunningFirstTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningGroup()Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 317
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->getFirstResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopRunningSecondTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningGroup()Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 325
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    .line 999
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningFirstTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1000
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningSecondTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 1002
    .local v3, "seconndTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1006
    .local v0, "firstActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1008
    .local v2, "secondActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1009
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivitySplitModeManager;->removeTaskInGroup(Lcom/android/server/am/TaskRecord;)V

    .line 1011
    :cond_2
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1012
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->removeTaskInGroup(Lcom/android/server/am/TaskRecord;)V

    goto :goto_0
.end method

.method public hideFloatView()V
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    if-eqz v0, :cond_0

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    invoke-interface {v0}, Lmeizu/splitmode/ISplitLocControllerService;->hideFloat()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public imeStateChanged(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 1253
    if-lez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->isImeShowed:Z

    .line 1254
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    invoke-interface {v0, p1}, Lmeizu/splitmode/ISplitLocControllerService;->imeStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    :cond_0
    :goto_1
    return-void

    .line 1253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1257
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isActivityTopAndSplit(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 472
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-lez v1, :cond_0

    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isImeShowed()Z
    .locals 1

    .prologue
    .line 1249
    iget-boolean v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->isImeShowed:Z

    return v0
.end method

.method public isSplitMode()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mIsSplitMode:Z

    return v0
.end method

.method public isTaskSecondResumed(Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v1, 0x0

    .line 251
    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 255
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskSplitGroup;->isSecondResumeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTaskSplitFocused(Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 241
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public mayMoveSplitTaskFirst(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "movingTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 417
    if-nez p2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-object v4

    .line 420
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 421
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningGroup()Lcom/android/server/am/TaskSplitGroup;

    move-result-object v2

    .line 426
    .local v2, "resumedGroup":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    .line 427
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivitySplitModeManager;->removeTaskInGroup(Lcom/android/server/am/TaskRecord;)V

    .line 428
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivitySplitModeManager;->addSplitTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 432
    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    .line 433
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 434
    const/4 v3, 0x0

    .line 435
    .local v3, "screenSize":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_3

    .line 436
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getScreenSize()Landroid/graphics/Point;

    move-result-object v3

    .line 438
    :cond_3
    const/4 v1, 0x0

    .line 439
    .local v1, "loc":I
    if-eqz v3, :cond_4

    .line 440
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_6

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v4, 0x2

    .line 442
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 443
    iput v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    .line 444
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v4, v1}, Lcom/android/server/am/TaskSplitGroup;->setCurrentSplitLoc(I)V

    .line 448
    :goto_2
    invoke-virtual {v0, p2}, Lcom/android/server/am/TaskSplitGroup;->isSecondResumeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 449
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->updateFocusSplitTask()V

    .line 450
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->resumeSplitGroup()V

    .line 455
    .end local v1    # "loc":I
    .end local v3    # "screenSize":Landroid/graphics/Point;
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    goto :goto_0

    .line 440
    .restart local v1    # "loc":I
    .restart local v3    # "screenSize":Landroid/graphics/Point;
    :cond_6
    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v4, 0x2

    goto :goto_1

    .line 446
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v4}, Lcom/android/server/am/TaskSplitGroup;->getCurrentSplitLoc()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    goto :goto_2

    .line 451
    :cond_8
    invoke-virtual {v0, p2}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 452
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->resumeSplitGroup()V

    goto :goto_3
.end method

.method public maySetGroupResume(Lcom/android/server/am/ActivityStack;)V
    .locals 8
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 369
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    const/4 v2, 0x0

    .line 373
    .local v2, "nextResume":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_1
    if-ltz v5, :cond_2

    .line 374
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 375
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5

    .line 376
    move-object v2, v3

    .line 380
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eqz v2, :cond_0

    .line 383
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 384
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 388
    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    .line 389
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget-object v7, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 390
    const/4 v4, 0x0

    .line 391
    .local v4, "screenSize":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v6, :cond_3

    .line 392
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    .line 394
    :cond_3
    const/4 v1, 0x0

    .line 395
    .local v1, "loc":I
    if-eqz v4, :cond_4

    .line 396
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_6

    iget v6, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v6, 0x2

    .line 398
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 399
    iput v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    .line 400
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v6, v1}, Lcom/android/server/am/TaskSplitGroup;->setCurrentSplitLoc(I)V

    .line 404
    :goto_3
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/am/TaskSplitGroup;->isSecondResumeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 405
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->updateFocusSplitTask()V

    .line 406
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->resumeSplitGroup()V

    goto :goto_0

    .line 373
    .end local v0    # "group":Lcom/android/server/am/TaskSplitGroup;
    .end local v1    # "loc":I
    .end local v4    # "screenSize":Landroid/graphics/Point;
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 396
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v0    # "group":Lcom/android/server/am/TaskSplitGroup;
    .restart local v1    # "loc":I
    .restart local v4    # "screenSize":Landroid/graphics/Point;
    :cond_6
    iget v6, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v6, 0x2

    goto :goto_2

    .line 402
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v6}, Lcom/android/server/am/TaskSplitGroup;->getCurrentSplitLoc()I

    move-result v6

    iput v6, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    goto :goto_3

    .line 409
    :cond_8
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->resumeSplitGroup()V

    goto/16 :goto_0
.end method

.method public needPauseTaskForMoveTaskBack(Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v0, 0x0

    .line 947
    if-nez p1, :cond_1

    .line 953
    :cond_0
    :goto_0
    return v0

    .line 950
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public orientationChanged(I)V
    .locals 4
    .param p1, "changes"    # I

    .prologue
    .line 1214
    and-int/lit16 v2, p1, 0x80

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1215
    const/4 v1, 0x0

    .line 1216
    .local v1, "screenSize":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1219
    :cond_0
    const/4 v0, 0x0

    .line 1220
    .local v0, "loc":I
    if-eqz v1, :cond_1

    .line 1221
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_4

    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v2, 0x2

    .line 1223
    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    .line 1224
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v2, :cond_2

    .line 1225
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v2, v0}, Lcom/android/server/am/TaskSplitGroup;->setCurrentSplitLoc(I)V

    .line 1226
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget-object v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 1228
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_3

    .line 1229
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->updateLocWithoutLayout(I)V

    .line 1232
    .end local v0    # "loc":I
    .end local v1    # "screenSize":Landroid/graphics/Point;
    :cond_3
    return-void

    .line 1221
    .restart local v0    # "loc":I
    .restart local v1    # "screenSize":Landroid/graphics/Point;
    :cond_4
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v2, 0x2

    goto :goto_0
.end method

.method public pauseGroupIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    .line 280
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->setSplitMode(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->hideFloatView()V

    .line 283
    iget-boolean v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->splitHandler:Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->sendEmptyMessage(I)Z

    .line 286
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->pauseSplitGroup()V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    .line 288
    iput v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    .line 290
    :cond_1
    return-void
.end method

.method public removeLockResizeActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->lockResizeActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1426
    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->checkAndEnableResize()V

    goto :goto_0
.end method

.method public removeTaskInGroup(Lcom/android/server/am/TaskRecord;)V
    .locals 20
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 596
    if-nez p1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    const/4 v6, 0x0

    .line 600
    .local v6, "group":Lcom/android/server/am/TaskSplitGroup;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "group":Lcom/android/server/am/TaskSplitGroup;
    check-cast v6, Lcom/android/server/am/TaskSplitGroup;

    .line 602
    .restart local v6    # "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v6, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskSplitGroup;->hasSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 607
    :cond_2
    if-eqz v6, :cond_0

    .line 608
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivitySplitModeManager;->mLastRemoveTask:Lcom/android/server/am/TaskRecord;

    .line 610
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getSplitMode()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 611
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setSplitmode(Z)V

    .line 613
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskSplitGroup;->hasNextTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    .line 614
    .local v7, "hasNext":Z
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskSplitGroup;->isSecondResumeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v18

    if-eqz v18, :cond_9

    :cond_4
    const/4 v9, 0x1

    .line 615
    .local v9, "isFrontOfTaskInGroup":Z
    :goto_2
    if-nez v9, :cond_b

    .line 616
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 617
    .local v4, "activtySize":I
    if-lez v4, :cond_a

    .line 618
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_a

    .line 619
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 620
    .local v3, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->splitMode:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    .line 622
    :try_start_0
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 623
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Landroid/app/IApplicationThread;->scheduleActivitySplitModeExit(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 628
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->removeLockResizeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 629
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setSplitmode(Z)V

    .line 630
    iget-boolean v0, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 631
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivitySplitModeManager;->setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V

    .line 633
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V

    .line 618
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 605
    .end local v3    # "a":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "activtySize":I
    .end local v7    # "hasNext":Z
    .end local v9    # "isFrontOfTaskInGroup":Z
    :cond_8
    const/4 v6, 0x0

    .line 600
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 614
    .restart local v7    # "hasNext":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 637
    .restart local v4    # "activtySize":I
    .restart local v9    # "isFrontOfTaskInGroup":Z
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskSplitGroup;->removeTask(Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_0

    .line 641
    .end local v4    # "activtySize":I
    :cond_b
    if-nez v7, :cond_18

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/TaskSplitGroup;->getFirstResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 645
    .local v5, "firstResumedTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    .line 647
    .local v14, "secondResumedTask":Lcom/android/server/am/TaskRecord;
    const/4 v12, 0x0

    .line 648
    .local v12, "resume1":Lcom/android/server/am/ActivityRecord;
    const/4 v13, 0x0

    .line 649
    .local v13, "resume2":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_c

    .line 650
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 652
    :cond_c
    if-eqz v14, :cond_d

    .line 653
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 655
    :cond_d
    if-eqz v12, :cond_e

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wm/WindowManagerService;->freezingAppForSplitLocChange(Landroid/os/IBinder;)V

    .line 658
    :cond_e
    if-eqz v13, :cond_f

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wm/WindowManagerService;->freezingAppForSplitLocChange(Landroid/os/IBinder;)V

    .line 662
    .end local v5    # "firstResumedTask":Lcom/android/server/am/TaskRecord;
    .end local v12    # "resume1":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "resume2":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "secondResumedTask":Lcom/android/server/am/TaskRecord;
    :cond_f
    invoke-virtual {v6}, Lcom/android/server/am/TaskSplitGroup;->getGroupTasks()[Lcom/android/server/am/TaskRecord;

    move-result-object v17

    .line 664
    .local v17, "taskList":[Lcom/android/server/am/TaskRecord;
    if-eqz v17, :cond_15

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_15

    .line 665
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_15

    .line 666
    aget-object v18, v17, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    aget-object v18, v17, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getSplitMode()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 667
    aget-object v18, v17, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setSplitmode(Z)V

    .line 669
    :cond_10
    aget-object v18, v17, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 670
    .restart local v4    # "activtySize":I
    if-lez v4, :cond_14

    .line 671
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    if-ge v10, v4, :cond_14

    .line 672
    aget-object v18, v17, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 673
    .restart local v3    # "a":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->splitMode:I

    move/from16 v18, v0

    if-lez v18, :cond_13

    .line 675
    :try_start_1
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 676
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Landroid/app/IApplicationThread;->scheduleActivitySplitModeExit(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 682
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->removeLockResizeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 683
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setSplitmode(Z)V

    .line 684
    iget-boolean v0, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    .line 685
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivitySplitModeManager;->setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V

    .line 687
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V

    .line 671
    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 665
    .end local v3    # "a":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "j":I
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 693
    .end local v4    # "activtySize":I
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v16, v0

    .line 694
    .local v16, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v15

    .line 696
    .local v15, "secondTask":Lcom/android/server/am/TaskRecord;
    if-eqz v16, :cond_16

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-virtual {v6}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v18

    if-eqz v18, :cond_16

    if-eqz v15, :cond_16

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 698
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 699
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivitySplitModeManager;->resumeDirectActivity:Lcom/android/server/am/ActivityRecord;

    .line 701
    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivitySplitModeManager;->mIsSplitMode:Z

    .line 703
    invoke-virtual {v6}, Lcom/android/server/am/TaskSplitGroup;->finishSplitGroup()V

    .line 704
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivitySplitModeManager;->mLastRemoveTask:Lcom/android/server/am/TaskRecord;

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mSplitTaskGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_17

    .line 708
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivitySplitModeManager;->mCurGroupId:I

    .line 710
    :cond_17
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivitySplitModeManager;->setSplitMode(Z)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivitySplitModeManager;->hideFloatView()V

    .line 712
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->splitHandler:Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 717
    .end local v15    # "secondTask":Lcom/android/server/am/TaskRecord;
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v17    # "taskList":[Lcom/android/server/am/TaskRecord;
    :cond_18
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskSplitGroup;->removeFrontTaskAndResumeNext(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 718
    .local v11, "newFocusTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 719
    .restart local v4    # "activtySize":I
    if-lez v4, :cond_1c

    .line 720
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_8
    if-ge v10, v4, :cond_1c

    .line 721
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 722
    .restart local v3    # "a":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->splitMode:I

    move/from16 v18, v0

    if-lez v18, :cond_1b

    .line 724
    :try_start_2
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 725
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Landroid/app/IApplicationThread;->scheduleActivitySplitModeExit(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 730
    :cond_19
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->removeLockResizeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 731
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setSplitmode(Z)V

    .line 732
    iget-boolean v0, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v18, v0

    if-nez v18, :cond_1a

    .line 733
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivitySplitModeManager;->setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V

    .line 735
    :cond_1a
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V

    .line 720
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 740
    .end local v3    # "a":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "j":I
    :cond_1c
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskSplitGroup;->removeTask(Lcom/android/server/am/TaskRecord;)V

    .line 742
    if-eqz v11, :cond_0

    invoke-virtual {v6}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 743
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStack;->moveSplitTaskToFront(Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_0

    .line 727
    .restart local v3    # "a":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "j":I
    :catch_0
    move-exception v18

    goto :goto_9

    .line 678
    .end local v11    # "newFocusTask":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "taskList":[Lcom/android/server/am/TaskRecord;
    :catch_1
    move-exception v18

    goto/16 :goto_7

    .line 625
    .end local v10    # "j":I
    .end local v17    # "taskList":[Lcom/android/server/am/TaskRecord;
    :catch_2
    move-exception v18

    goto/16 :goto_4
.end method

.method public resetResumeDirectActivity()V
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->resumeDirectActivity:Lcom/android/server/am/ActivityRecord;

    .line 757
    return-void
.end method

.method public resetSplitMode()V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mIsSplitMode:Z

    .line 857
    return-void
.end method

.method public setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V
    .locals 8
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "splitmode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1278
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v6, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_0

    .line 1283
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v6, v7, p2}, Landroid/app/IApplicationThread;->scheduleActivitySetSplitMode(Landroid/os/IBinder;I)V

    .line 1284
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v3

    .line 1285
    .local v3, "group":Lcom/android/server/am/TaskSplitGroup;
    const/4 v1, 0x0

    .line 1286
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v3, :cond_0

    .line 1289
    if-ne p2, v5, :cond_6

    .line 1290
    invoke-virtual {v3}, Lcom/android/server/am/TaskSplitGroup;->getUpConfig()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1297
    :cond_2
    :goto_1
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v6, :cond_8

    if-eqz v1, :cond_3

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitConfiguration:Landroid/content/res/Configuration;

    if-nez v6, :cond_8

    :cond_3
    move v0, v5

    .line 1298
    .local v0, "change":Z
    :goto_2
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1299
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 1300
    .local v2, "diff":I
    and-int/lit16 v6, v2, 0x400

    if-gtz v6, :cond_4

    and-int/lit16 v6, v2, 0x80

    if-lez v6, :cond_9

    :cond_4
    move v0, v5

    .line 1302
    .end local v2    # "diff":I
    :cond_5
    :goto_3
    if-eqz v0, :cond_0

    .line 1303
    if-nez v1, :cond_a

    .line 1304
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->splitConfiguration:Landroid/content/res/Configuration;

    .line 1308
    :goto_4
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1310
    .end local v0    # "change":Z
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "group":Lcom/android/server/am/TaskSplitGroup;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1291
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "group":Lcom/android/server/am/TaskSplitGroup;
    :cond_6
    const/4 v6, 0x2

    if-ne p2, v6, :cond_7

    .line 1292
    invoke-virtual {v3}, Lcom/android/server/am/TaskSplitGroup;->getDownConfig()Landroid/content/res/Configuration;

    move-result-object v1

    goto :goto_1

    .line 1293
    :cond_7
    if-nez p2, :cond_2

    .line 1294
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    move v0, v4

    .line 1297
    goto :goto_2

    .restart local v0    # "change":Z
    .restart local v2    # "diff":I
    :cond_9
    move v0, v4

    .line 1300
    goto :goto_3

    .line 1306
    .end local v2    # "diff":I
    :cond_a
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->splitConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method public setAppSplitConfig(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1337
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v2

    .line 1341
    .local v2, "group":Lcom/android/server/am/TaskSplitGroup;
    const/4 v0, 0x0

    .line 1342
    .local v0, "config1":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    .line 1343
    .local v1, "config2":Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    .line 1344
    invoke-virtual {v2}, Lcom/android/server/am/TaskSplitGroup;->getUpConfig()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1345
    invoke-virtual {v2}, Lcom/android/server/am/TaskSplitGroup;->getDownConfig()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1347
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    .line 1349
    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, v0, v1}, Landroid/app/IApplicationThread;->scheduleUpdateSplitConfig(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1350
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setSplitMode(Z)V
    .locals 1
    .param p1, "splitMode"    # Z

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mIsSplitMode:Z

    .line 771
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setSplitMode(Z)V

    .line 774
    :cond_0
    return-void
.end method

.method public setWinSplitMode(Landroid/view/IApplicationToken$Stub;I)V
    .locals 2
    .param p1, "token"    # Landroid/view/IApplicationToken$Stub;
    .param p2, "splitmode"    # I

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_1

    .line 761
    if-lez p2, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateSplitLoc(I)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowTokenSplitMode(Landroid/os/IBinder;I)V

    .line 766
    :cond_1
    return-void
.end method

.method public shouldActivitySkipPausingAndStopping(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/am/ActivitySplitModeManager;->mIsSplitMode:Z

    if-eqz v3, :cond_0

    .line 192
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/server/am/ActivitySplitModeManager;->getTopRunningGroup()Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 196
    .local v0, "topGroup":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 200
    .local v1, "topSecondResumeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 201
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public shouldResumeSplitGroupFocusTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p1, "resumedTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v1, 0x0

    .line 461
    if-nez p1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v1

    .line 464
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 465
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/android/server/am/TaskSplitGroup;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskSplitGroup;->isSecondResumeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showFloatView()V
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    if-eqz v0, :cond_1

    .line 1094
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    iget v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    invoke-interface {v0, v1}, Lmeizu/splitmode/ISplitLocControllerService;->showFloat(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->splitHandler:Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateActivitySplitConfigForCreating(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1317
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v1

    .line 1321
    .local v1, "group":Lcom/android/server/am/TaskSplitGroup;
    const/4 v0, 0x0

    .line 1322
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 1325
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->splitMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1326
    invoke-virtual {v1}, Lcom/android/server/am/TaskSplitGroup;->getUpConfig()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1330
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1333
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->splitConfiguration:Landroid/content/res/Configuration;

    goto :goto_0

    .line 1327
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->splitMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1328
    invoke-virtual {v1}, Lcom/android/server/am/TaskSplitGroup;->getDownConfig()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_1
.end method

.method public updateConfigurationLocked(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 898
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v2, :cond_2

    .line 899
    const/4 v1, 0x0

    .line 900
    .local v1, "screenSize":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 903
    :cond_0
    const/4 v0, 0x0

    .line 904
    .local v0, "loc":I
    if-eqz v1, :cond_1

    .line 905
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_3

    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v2, 0x2

    .line 907
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivitySplitModeManager;->updateSplitLocWithoutLayout(I)V

    .line 908
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 909
    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivitySplitModeManager;->updateGroupThreadConfig(Lcom/android/server/am/TaskSplitGroup;)V

    .line 911
    .end local v0    # "loc":I
    .end local v1    # "screenSize":Landroid/graphics/Point;
    :cond_2
    return-void

    .line 905
    .restart local v0    # "loc":I
    .restart local v1    # "screenSize":Landroid/graphics/Point;
    :cond_3
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v2, 0x2

    goto :goto_0
.end method

.method public updateFloatFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 957
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v1}, Lcom/android/server/am/TaskSplitGroup;->getFirstResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 959
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus change, target split mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivitySplitModeManager;->log(Ljava/lang/String;)V

    .line 961
    iget v1, v0, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v1, v3, :cond_1

    .line 962
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivitySplitModeManager;->updateFocus(Z)V

    .line 968
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    return-void

    .line 963
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget v1, v0, Lcom/android/server/am/TaskRecord;->splitMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 964
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivitySplitModeManager;->updateFocus(Z)V

    goto :goto_0
.end method

.method public updateFloatLoc(I)V
    .locals 1
    .param p1, "loc"    # I

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    if-eqz v0, :cond_0

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    invoke-interface {v0, p1}, Lmeizu/splitmode/ISplitLocControllerService;->updateFloatLoc(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateFocus(Z)V
    .locals 1
    .param p1, "focusUp"    # Z

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    if-eqz v0, :cond_0

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    invoke-interface {v0, p1}, Lmeizu/splitmode/ISplitLocControllerService;->updateFocus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateGroupThreadConfig(Lcom/android/server/am/TaskSplitGroup;)V
    .locals 7
    .param p1, "group"    # Lcom/android/server/am/TaskSplitGroup;

    .prologue
    const/4 v4, 0x0

    .line 914
    invoke-virtual {p1}, Lcom/android/server/am/TaskSplitGroup;->getFirstResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 915
    .local v0, "first":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 916
    .local v3, "second":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    .line 917
    .local v1, "resume1":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 918
    .local v2, "resume2":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 921
    :cond_0
    if-eqz v3, :cond_1

    .line 922
    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 924
    :cond_1
    if-eqz v1, :cond_2

    .line 926
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 927
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1}, Lcom/android/server/am/TaskSplitGroup;->getUpConfig()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/am/TaskSplitGroup;->getDownConfig()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleUpdateSplitConfig(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 928
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 934
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 936
    :try_start_1
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_3

    .line 937
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1}, Lcom/android/server/am/TaskSplitGroup;->getUpConfig()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/am/TaskSplitGroup;->getDownConfig()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleUpdateSplitConfig(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 938
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivitySplitModeManager;->setActivitySplitMode(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 944
    :cond_3
    :goto_1
    return-void

    .line 940
    :catch_0
    move-exception v4

    goto :goto_1

    .line 930
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public updateReturnTypeForSplitModeIfNeeded(Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "nextResume"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 265
    if-nez p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->getTaskGroup(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskSplitGroup;

    move-result-object v0

    .line 269
    .local v0, "group":Lcom/android/server/am/TaskSplitGroup;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    .line 273
    .local v1, "isFocused":Z
    if-eqz v1, :cond_0

    .line 274
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_0
.end method

.method public updateShownFrameLoc(I)V
    .locals 6
    .param p1, "loc"    # I

    .prologue
    .line 1136
    const/4 v3, -0x1

    .line 1137
    .local v3, "upTaskId":I
    const/4 v0, -0x1

    .line 1138
    .local v0, "downTaskId":I
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v4, :cond_0

    .line 1139
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v4}, Lcom/android/server/am/TaskSplitGroup;->getFirstResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1140
    .local v1, "task1":Lcom/android/server/am/TaskRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v4}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 1141
    .local v2, "task2":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1142
    iget v4, v1, Lcom/android/server/am/TaskRecord;->splitMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1143
    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1144
    iget v0, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1151
    .end local v1    # "task1":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task2":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    if-lez v0, :cond_1

    .line 1152
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v3, v0, p1}, Lcom/android/server/wm/WindowManagerService;->moveWinShownFrameForRisizingSplit(III)V

    .line 1154
    :cond_1
    return-void

    .line 1146
    .restart local v1    # "task1":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task2":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1147
    iget v0, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method public updateSplitLoc(I)V
    .locals 7
    .param p1, "loc"    # I

    .prologue
    .line 860
    iget v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    if-ne v4, p1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iput p1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    .line 864
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v4, :cond_2

    .line 865
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskSplitGroup;->setCurrentSplitLoc(I)V

    .line 866
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 867
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivitySplitModeManager;->updateGroupThreadConfig(Lcom/android/server/am/TaskSplitGroup;)V

    .line 869
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivitySplitModeManager;->isSplitMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 871
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v4, :cond_7

    .line 872
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v4}, Lcom/android/server/am/TaskSplitGroup;->getFirstResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 873
    .local v0, "firstResumedTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    invoke-virtual {v4}, Lcom/android/server/am/TaskSplitGroup;->getSecondResumedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 875
    .local v3, "secondResumedTask":Lcom/android/server/am/TaskRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 876
    const/4 v1, 0x0

    .line 877
    .local v1, "resume1":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 878
    .local v2, "resume2":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    .line 879
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 881
    :cond_3
    if-eqz v3, :cond_4

    .line 882
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 884
    :cond_4
    if-eqz v1, :cond_5

    .line 885
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->freezingAppForSplitLocChange(Landroid/os/IBinder;)V

    .line 887
    :cond_5
    if-eqz v2, :cond_6

    .line 888
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->freezingAppForSplitLocChange(Landroid/os/IBinder;)V

    .line 890
    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    .end local v0    # "firstResumedTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "resume1":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "resume2":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "secondResumedTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateSplitLoc(I)V

    goto :goto_0

    .line 890
    .restart local v0    # "firstResumedTask":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "resume1":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "resume2":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "secondResumedTask":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public updateSplitLocWithoutLayout(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 1235
    iget v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    if-ne v0, p1, :cond_0

    .line 1244
    :goto_0
    return-void

    .line 1238
    :cond_0
    iput p1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskSplitGroup;->setCurrentSplitLoc(I)V

    .line 1241
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mResumedGroup:Lcom/android/server/am/TaskSplitGroup;

    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskSplitGroup;->updateServiceConfig(Landroid/content/res/Configuration;)V

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/ActivitySplitModeManager;->mCurrentSplitLoc:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateLocWithoutLayout(I)V

    goto :goto_0
.end method
