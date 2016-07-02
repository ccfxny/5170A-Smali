.class public Lcom/android/commands/monkey/MonkeyKeyEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyKeyEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mKeyCode:I

.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScanCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 12
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    .line 42
    const/4 v10, -0x1

    move-object v1, p0

    move-wide v4, v2

    move v6, p1

    move v7, p2

    move v9, v8

    move v11, v8

    invoke-direct/range {v1 .. v11}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 43
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "keyCode"    # I
    .param p7, "repeatCount"    # I
    .param p8, "metaState"    # I
    .param p9, "device"    # I
    .param p10, "scanCode"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 49
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 50
    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 51
    iput p5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 52
    iput p6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 53
    iput p7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    .line 54
    iput p8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    .line 55
    iput p9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    .line 56
    iput p10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 61
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 62
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    goto :goto_0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    goto :goto_0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    goto :goto_0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    goto :goto_0
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 17
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    .line 101
    const/4 v8, 0x1

    move/from16 v0, p3

    if-le v0, v8, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 104
    const-string v16, "ACTION_UP"

    .line 110
    .local v16, "note":Ljava/lang/String;
    :goto_0
    :try_start_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ":Sending Key ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    // "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-static {v10}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v16    # "note":Ljava/lang/String;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 120
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    if-nez v3, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 122
    .local v6, "eventTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_1

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 125
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 126
    .local v4, "downTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_2

    .line 127
    move-wide v4, v6

    .line 129
    :cond_2
    new-instance v3, Landroid/view/KeyEvent;

    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    const/16 v14, 0x8

    const/16 v15, 0x101

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 133
    .end local v4    # "downTime":J
    .end local v6    # "eventTime":J
    .restart local v3    # "keyEvent":Landroid/view/KeyEvent;
    :cond_3
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 135
    const/4 v8, 0x0

    .line 137
    :goto_2
    return v8

    .line 106
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    :cond_4
    const-string v16, "ACTION_DOWN"

    .restart local v16    # "note":Ljava/lang/String;
    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ":Sending Key ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    // Unknown key event"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v16    # "note":Ljava/lang/String;
    .restart local v3    # "keyEvent":Landroid/view/KeyEvent;
    :cond_5
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public isThrottlable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownTime(J)V
    .locals 3
    .param p1, "downTime"    # J

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify down time of this key event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 85
    return-void
.end method

.method public setEventTime(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify event time of this key event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 92
    return-void
.end method
