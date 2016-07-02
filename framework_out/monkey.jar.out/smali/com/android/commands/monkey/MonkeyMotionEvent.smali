.class public abstract Lcom/android/commands/monkey/MonkeyMotionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyMotionEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTime:J

.field private mFlags:I

.field private mIntermediateNote:Z

.field private mMetaState:I

.field private mPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:I

.field private mXPrecision:F

.field private mYPrecision:F


# direct methods
.method protected constructor <init>(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "source"    # I
    .param p3, "action"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 48
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    .line 49
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 50
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 51
    iput p3, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    .line 53
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 54
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 55
    return-void
.end method

.method private getEvent()Landroid/view/MotionEvent;
    .locals 19

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 130
    .local v7, "pointerCount":I
    new-array v8, v7, [I

    .line 131
    .local v8, "pointerIds":[I
    new-array v9, v7, [Landroid/view/MotionEvent$PointerCoords;

    .line 132
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v7, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v8, v18

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent$PointerCoords;

    aput-object v2, v9, v18

    .line 132
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 137
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-gez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mFlags:I

    move/from16 v16, v0

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v17

    .line 141
    .local v17, "ev":Landroid/view/MotionEvent;
    return-object v17

    .line 137
    .end local v17    # "ev":Landroid/view/MotionEvent;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    goto :goto_1
.end method


# virtual methods
.method public addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 6
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 58
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pressure"    # F
    .param p5, "size"    # F

    .prologue
    .line 63
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 64
    .local v0, "c":Landroid/view/MotionEvent$PointerCoords;
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 65
    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 66
    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 67
    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 68
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    return-wide v0
.end method

.method public getIntermediateNote()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    return v0
.end method

.method protected abstract getTypeLabel()Ljava/lang/String;
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 7
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 152
    .local v1, "me":Landroid/view/MotionEvent;
    if-lez p3, :cond_0

    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    if-eqz v5, :cond_1

    :cond_0
    if-le p3, v4, :cond_3

    .line 153
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, ":Sending "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getTypeLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 175
    :pswitch_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    :goto_0
    const-string v5, "):"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 181
    .local v3, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 182
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v5, ":("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "i":I
    .end local v3    # "pointerCount":I
    :pswitch_1
    const-string v5, "ACTION_DOWN"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :pswitch_2
    const-string v5, "ACTION_MOVE"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :pswitch_3
    const-string v5, "ACTION_UP"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :pswitch_4
    const-string v5, "ACTION_CANCEL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :pswitch_5
    const-string v5, "ACTION_POINTER_DOWN "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :pswitch_6
    const-string v5, "ACTION_POINTER_UP "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 185
    .restart local v0    # "i":I
    .restart local v3    # "pointerCount":I
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    .end local v0    # "i":I
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .end local v3    # "pointerCount":I
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_4

    .line 190
    const/4 v4, 0x0

    .line 193
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 195
    :goto_2
    return v4

    .line 193
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    throw v4

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isThrottlable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    .line 116
    return-object p0
.end method

.method public setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 1
    .param p1, "downTime"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 95
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    .line 121
    return-object p0
.end method

.method public setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 1
    .param p1, "eventTime"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 100
    return-object p0
.end method

.method public setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    .line 74
    return-object p0
.end method

.method public setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "metaState"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    .line 105
    return-object p0
.end method

.method public setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "xPrecision"    # F
    .param p2, "yPrecision"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 110
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 111
    return-object p0
.end method
