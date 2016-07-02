.class public Lcom/android/server/am/TaskSplitGroup;
.super Ljava/lang/Object;
.source "TaskSplitGroup.java"


# static fields
.field private static final MAX_TASK:I = 0x8


# instance fields
.field private downConfig:Landroid/content/res/Configuration;

.field private final groupId:I

.field private mCurrentSplitLoc:I

.field private mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

.field private mSecondResumedTask:Lcom/android/server/am/TaskRecord;

.field private mSplitGroupResumed:Z

.field private mSplitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private serviceConfig:Landroid/content/res/Configuration;

.field private upConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "splitLoc"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    .line 31
    iput-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    .line 32
    iput-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    .line 34
    iput-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    .line 35
    iput-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    .line 36
    iput-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitGroupResumed:Z

    .line 44
    iput p1, p0, Lcom/android/server/am/TaskSplitGroup;->groupId:I

    .line 45
    iput p2, p0, Lcom/android/server/am/TaskSplitGroup;->mCurrentSplitLoc:I

    .line 46
    return-void
.end method


# virtual methods
.method public addSplitTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 85
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    const-string v2, "task existed!!!"

    invoke-static {v2}, Lcom/android/server/am/ActivitySplitModeManager;->log(Ljava/lang/String;)V

    move v2, v3

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 94
    .local v1, "size":I
    const/16 v4, 0x8

    if-lt v1, v4, :cond_3

    .line 95
    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 96
    .local v0, "r":Lcom/android/server/am/TaskRecord;
    iput v2, v0, Lcom/android/server/am/TaskRecord;->splitMode:I

    .line 97
    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    .line 98
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/am/TaskRecord;->splitGroupId:I

    .line 99
    iput v2, v0, Lcom/android/server/am/TaskRecord;->splitLoc:I

    .line 101
    .end local v0    # "r":Lcom/android/server/am/TaskRecord;
    :cond_3
    if-gt v1, v3, :cond_6

    .line 102
    iput-boolean v3, p1, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    .line 103
    if-nez v1, :cond_5

    .line 104
    iput v3, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    .line 105
    iput-object p1, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    .line 110
    :cond_4
    :goto_1
    iget v2, p0, Lcom/android/server/am/TaskSplitGroup;->groupId:I

    iput v2, p1, Lcom/android/server/am/TaskRecord;->splitGroupId:I

    .line 111
    iget v2, p0, Lcom/android/server/am/TaskSplitGroup;->mCurrentSplitLoc:I

    iput v2, p1, Lcom/android/server/am/TaskRecord;->splitLoc:I

    .line 112
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iput-boolean v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitGroupResumed:Z

    move v2, v3

    .line 114
    goto :goto_0

    .line 106
    :cond_5
    if-ne v1, v3, :cond_4

    .line 107
    iput v5, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    .line 108
    iput-object p1, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    goto :goto_1

    .line 115
    :cond_6
    if-lt v1, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitGroupResumed:Z

    if-eqz v4, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget v2, p0, Lcom/android/server/am/TaskSplitGroup;->groupId:I

    iput v2, p1, Lcom/android/server/am/TaskRecord;->splitGroupId:I

    .line 120
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->splitMode:I

    iput v2, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    .line 121
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, v2, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    iput-boolean v2, p1, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    .line 122
    iget v2, p0, Lcom/android/server/am/TaskSplitGroup;->mCurrentSplitLoc:I

    iput v2, p1, Lcom/android/server/am/TaskRecord;->splitLoc:I

    .line 123
    iput-object p1, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    move v2, v3

    .line 124
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 303
    const-string v2, "TaskSplitGroup is empty"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v2, "***********"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/TaskSplitGroup;->groupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group resume state mSplitGroupResumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitGroupResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentSplitLoc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/TaskSplitGroup;->mCurrentSplitLoc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upconfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downconfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_1

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusedSplitTask id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitresumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitLoc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->splitLoc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    resume activity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_2

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSecondResumedTask id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitresumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitLoc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->splitLoc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    resume activity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    const-string v2, "****"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 330
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 331
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 332
    .local v1, "r":Lcom/android/server/am/TaskRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "task id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/am/TaskRecord;->splitMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitresumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitLoc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/am/TaskRecord;->splitLoc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    resume activity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 330
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 339
    .end local v1    # "r":Lcom/android/server/am/TaskRecord;
    :cond_3
    const-string v2, "***********"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public finishSplitGroup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/android/server/am/TaskSplitGroup;->pauseSplitGroup()V

    .line 242
    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 243
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 244
    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 245
    .local v1, "r":Lcom/android/server/am/TaskRecord;
    iput v4, v1, Lcom/android/server/am/TaskRecord;->splitMode:I

    .line 246
    iput-boolean v4, v1, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    .line 247
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/am/TaskRecord;->splitGroupId:I

    .line 248
    iput v4, v1, Lcom/android/server/am/TaskRecord;->splitLoc:I

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "r":Lcom/android/server/am/TaskRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput-object v5, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    .line 252
    iput-object v5, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    .line 253
    return-void
.end method

.method public getAnotherSplitTaskId(I)I
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 279
    :goto_0
    return v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentSplitLoc()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/server/am/TaskSplitGroup;->mCurrentSplitLoc:I

    return v0
.end method

.method public getDownConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getFirstResumedTask()Lcom/android/server/am/TaskRecord;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/am/TaskSplitGroup;->groupId:I

    return v0
.end method

.method public getGroupSize()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupTasks()[Lcom/android/server/am/TaskRecord;
    .locals 3

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 182
    .local v0, "size":I
    new-array v1, v0, [Lcom/android/server/am/TaskRecord;

    .line 184
    .local v1, "taskList":[Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 187
    :cond_0
    return-object v1
.end method

.method public getSecondResumedTask()Lcom/android/server/am/TaskRecord;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method public getUpConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public hasNextTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v3, 0x0

    .line 158
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v3

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskSplitGroup;->getGroupSize()I

    move-result v1

    .line 162
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 163
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 165
    .local v2, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget v4, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    iget v5, v2, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v4, v5, :cond_2

    if-eq p1, v2, :cond_2

    .line 166
    const/4 v3, 0x1

    goto :goto_0

    .line 163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hasSplitTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitGroupResumed:Z

    return v0
.end method

.method public isSecondResumeTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseSplitGroup()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitGroupResumed:Z

    .line 192
    return-void
.end method

.method public removeFrontTaskAndResumeNext(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 236
    :goto_0
    return-object v2

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskSplitGroup;->getGroupSize()I

    move-result v1

    .line 219
    .local v1, "size":I
    if-lez v1, :cond_5

    .line 220
    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_5

    .line 221
    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 222
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eq p1, v2, :cond_4

    iget v4, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    iget v5, v2, Lcom/android/server/am/TaskRecord;->splitMode:I

    if-ne v4, v5, :cond_4

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskSplitGroup;->isFocusedSplitTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    iput-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    .line 230
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskSplitGroup;->isSecondResumeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    iput-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    goto :goto_2

    .line 220
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "index":I
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    move-object v2, v3

    .line 236
    goto :goto_0
.end method

.method public removeTask(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v1, 0x0

    .line 203
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    iput v1, p1, Lcom/android/server/am/TaskRecord;->splitMode:I

    .line 207
    iput-boolean v1, p1, Lcom/android/server/am/TaskRecord;->splitResumed:Z

    .line 208
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/server/am/TaskRecord;->splitGroupId:I

    .line 209
    iput v1, p1, Lcom/android/server/am/TaskRecord;->splitLoc:I

    .line 210
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resumeSplitGroup()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitGroupResumed:Z

    .line 196
    return-void
.end method

.method public setCurrentSplitLoc(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/android/server/am/TaskSplitGroup;->mCurrentSplitLoc:I

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iput p1, v1, Lcom/android/server/am/TaskRecord;->splitLoc:I

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method public updateFocusSplitTask()V
    .locals 4

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v1

    .line 139
    .local v1, "tmpReturnType":I
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 140
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 141
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    iput-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSecondResumedTask:Lcom/android/server/am/TaskRecord;

    .line 144
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 145
    .local v0, "size":I
    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mSplitList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iput-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->mFocusedSplitTask:Lcom/android/server/am/TaskRecord;

    goto :goto_0
.end method

.method public updateServiceConfig(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v3, 0x168

    .line 49
    iput-object p1, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 58
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    iget v1, p0, Lcom/android/server/am/TaskSplitGroup;->mCurrentSplitLoc:I

    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    div-int/lit16 v2, v2, 0xa0

    div-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 59
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 60
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 61
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    rsub-int v1, v1, 0x280

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 62
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 63
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 72
    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    iget v1, p0, Lcom/android/server/am/TaskSplitGroup;->mCurrentSplitLoc:I

    iget-object v2, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    div-int/lit16 v2, v2, 0xa0

    div-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 66
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 67
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 68
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->upConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    rsub-int v1, v1, 0x280

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 69
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 70
    iget-object v0, p0, Lcom/android/server/am/TaskSplitGroup;->downConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/am/TaskSplitGroup;->serviceConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0
.end method
