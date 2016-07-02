.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final EVENT_KEYWORD_DEVICE_WAKEUP:Ljava/lang/String; = "DeviceWakeUp"

.field private static final EVENT_KEYWORD_DRAG:Ljava/lang/String; = "Drag"

.field private static final EVENT_KEYWORD_END_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureAppFramerate"

.field private static final EVENT_KEYWORD_END_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureFramerate"

.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_INPUT_STRING:Ljava/lang/String; = "DispatchString"

.field private static final EVENT_KEYWORD_INSTRUMENTATION:Ljava/lang/String; = "LaunchInstrumentation"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_KEYPRESS:Ljava/lang/String; = "DispatchPress"

.field private static final EVENT_KEYWORD_LONGPRESS:Ljava/lang/String; = "LongPress"

.field private static final EVENT_KEYWORD_PINCH_ZOOM:Ljava/lang/String; = "PinchZoom"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_POWERLOG:Ljava/lang/String; = "PowerLog"

.field private static final EVENT_KEYWORD_PRESSANDHOLD:Ljava/lang/String; = "PressAndHold"

.field private static final EVENT_KEYWORD_PROFILE_WAIT:Ljava/lang/String; = "ProfileWait"

.field private static final EVENT_KEYWORD_ROTATION:Ljava/lang/String; = "RotateScreen"

.field private static final EVENT_KEYWORD_RUNCMD:Ljava/lang/String; = "RunCmd"

.field private static final EVENT_KEYWORD_START_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureAppFramerate"

.field private static final EVENT_KEYWORD_START_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureFramerate"

.field private static final EVENT_KEYWORD_TAP:Ljava/lang/String; = "Tap"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final EVENT_KEYWORD_WAIT:Ljava/lang/String; = "UserWait"

.field private static final EVENT_KEYWORD_WRITEPOWERLOG:Ljava/lang/String; = "WriteLog"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_LINE_BY_LINE:Ljava/lang/String; = "linebyline"

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static LONGPRESS_WAIT_TIME:I = 0x0

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z


# instance fields
.field mBufferedReader:Ljava/io/BufferedReader;

.field private mDeviceSleepTime:J

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mLastX:[F

.field private mLastY:[F

.field private mMonkeyStartTime:J

.field private mProfileWaitTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mReadScriptLineByLine:Z

.field private mScriptFileName:Ljava/lang/String;

.field private mScriptStartTime:J

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x7d0

    sput v0, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V
    .locals 2
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .param p6, "profileWaitTime"    # J
    .param p8, "deviceSleepTime"    # J

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 52
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 146
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 148
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    .line 161
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    .line 163
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    .line 173
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 175
    iput-wide p6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 176
    iput-wide p8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 177
    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .locals 10
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyKeyEvent;

    .prologue
    const-wide/16 v8, 0x0

    .line 892
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 920
    :goto_0
    return-void

    .line 895
    :cond_0
    const-wide/16 v2, 0x0

    .line 896
    .local v2, "thisDownTime":J
    const-wide/16 v4, 0x0

    .line 897
    .local v4, "thisEventTime":J
    const-wide/16 v0, 0x0

    .line 899
    .local v0, "expectedDelay":J
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 902
    move-wide v4, v2

    .line 914
    :goto_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 915
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 916
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    .line 917
    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    .line 918
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 919
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 905
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v2

    .line 909
    :goto_2
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v6, v8

    double-to-long v0, v6

    .line 910
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long v4, v6, v0

    .line 912
    const-wide/16 v6, 0x10

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    goto :goto_1

    .line 907
    :cond_2
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    goto :goto_2
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyMotionEvent;

    .prologue
    .line 928
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 929
    .local v2, "thisEventTime":J
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getDownTime()J

    move-result-wide v0

    .line 931
    .local v0, "thisDownTime":J
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 933
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 942
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 943
    return-void

    .line 936
    :cond_0
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 938
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 939
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    goto :goto_0
.end method

.method private closeFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 806
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 93
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 281
    const-string v16, "DispatchKey"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 283
    :try_start_0
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, " old key\n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    const/16 v16, 0x0

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 285
    .local v6, "downTime":J
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 286
    .local v8, "eventTime":J
    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 287
    .local v10, "action":I
    const/16 v16, 0x3

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 288
    .local v11, "code":I
    const/16 v16, 0x4

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 289
    .local v12, "repeat":I
    const/16 v16, 0x5

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 290
    .local v13, "metaState":I
    const/16 v16, 0x6

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 291
    .local v14, "device":I
    const/16 v16, 0x7

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 293
    .local v15, "scancode":I
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct/range {v5 .. v15}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 295
    .local v5, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Key code "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v22, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 298
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Added key up \n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    .line 771
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v11    # "code":I
    .end local v12    # "repeat":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v15    # "scancode":I
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v16, "DispatchPointer"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-gez v16, :cond_2

    const-string v16, "DispatchTrackball"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_4

    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0xc

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 308
    const/16 v16, 0x0

    :try_start_1
    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 309
    .restart local v6    # "downTime":J
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 310
    .restart local v8    # "eventTime":J
    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 311
    .restart local v10    # "action":I
    const/16 v16, 0x3

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 312
    .local v18, "x":F
    const/16 v16, 0x4

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 313
    .local v19, "y":F
    const/16 v16, 0x5

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 314
    .local v20, "pressure":F
    const/16 v16, 0x6

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    .line 315
    .local v21, "size":F
    const/16 v16, 0x7

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 316
    .restart local v13    # "metaState":I
    const/16 v16, 0x8

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v86

    .line 317
    .local v86, "xPrecision":F
    const/16 v16, 0x9

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v90

    .line 318
    .local v90, "yPrecision":F
    const/16 v16, 0xa

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 319
    .restart local v14    # "device":I
    const/16 v16, 0xb

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 322
    .local v43, "edgeFlags":I
    const-string v16, "Pointer"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_3

    .line 323
    new-instance v5, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v5, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 328
    .local v5, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_1
    invoke-virtual {v5, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v86

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v21}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 336
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "pressure":F
    .end local v21    # "size":F
    .end local v43    # "edgeFlags":I
    .end local v86    # "xPrecision":F
    .end local v90    # "yPrecision":F
    :catch_0
    move-exception v16

    goto/16 :goto_0

    .line 325
    .restart local v6    # "downTime":J
    .restart local v8    # "eventTime":J
    .restart local v10    # "action":I
    .restart local v13    # "metaState":I
    .restart local v14    # "device":I
    .restart local v18    # "x":F
    .restart local v19    # "y":F
    .restart local v20    # "pressure":F
    .restart local v21    # "size":F
    .restart local v43    # "edgeFlags":I
    .restart local v86    # "xPrecision":F
    .restart local v90    # "yPrecision":F
    :cond_3
    new-instance v5, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v5, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_1

    .line 342
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "pressure":F
    .end local v21    # "size":F
    .end local v43    # "edgeFlags":I
    .end local v86    # "xPrecision":F
    .end local v90    # "yPrecision":F
    :cond_4
    const-string v16, "DispatchPointer"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-gez v16, :cond_5

    const-string v16, "DispatchTrackball"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_d

    :cond_5
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 345
    const/16 v16, 0x0

    :try_start_2
    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 346
    .restart local v6    # "downTime":J
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 347
    .restart local v8    # "eventTime":J
    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 348
    .restart local v10    # "action":I
    const/16 v16, 0x3

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 349
    .restart local v18    # "x":F
    const/16 v16, 0x4

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 350
    .restart local v19    # "y":F
    const/16 v16, 0x5

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 351
    .restart local v20    # "pressure":F
    const/16 v16, 0x6

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    .line 352
    .restart local v21    # "size":F
    const/16 v16, 0x7

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 353
    .restart local v13    # "metaState":I
    const/16 v16, 0x8

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v86

    .line 354
    .restart local v86    # "xPrecision":F
    const/16 v16, 0x9

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v90

    .line 355
    .restart local v90    # "yPrecision":F
    const/16 v16, 0xa

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 356
    .restart local v14    # "device":I
    const/16 v16, 0xb

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 357
    .restart local v43    # "edgeFlags":I
    const/16 v16, 0xc

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    .line 360
    .local v53, "pointerId":I
    const-string v16, "Pointer"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_a

    .line 361
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v10, v0, :cond_9

    .line 362
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    shl-int/lit8 v17, v53, 0x8

    or-int/lit8 v17, v17, 0x5

    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    .line 368
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v22, 0x0

    cmp-long v16, v16, v22

    if-gez v16, :cond_6

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    .line 370
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    .line 376
    :cond_6
    :goto_3
    const/16 v16, 0x1

    move/from16 v0, v53

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 377
    invoke-virtual {v5, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v86

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v24, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v25, v16, v17

    move/from16 v26, v20

    move/from16 v27, v21

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v21}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput v18, v16, v17

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput v19, v16, v17

    .line 404
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    .line 406
    .local v36, "curUpTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    move-wide/from16 v16, v0

    sub-long v70, v36, v16

    .line 407
    .local v70, "realElapsedTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    move-wide/from16 v16, v0

    sub-long v74, v8, v16

    .line 408
    .local v74, "scriptElapsedTime":J
    cmp-long v16, v70, v74

    if-gez v16, :cond_8

    .line 409
    sub-long v82, v74, v70

    .line 410
    .local v82, "waitDuration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, v17

    move-wide/from16 v1, v82

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 413
    .end local v36    # "curUpTime":J
    .end local v70    # "realElapsedTime":J
    .end local v74    # "scriptElapsedTime":J
    .end local v82    # "waitDuration":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 414
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "pressure":F
    .end local v21    # "size":F
    .end local v43    # "edgeFlags":I
    .end local v53    # "pointerId":I
    .end local v86    # "xPrecision":F
    .end local v90    # "yPrecision":F
    :catch_1
    move-exception v16

    goto/16 :goto_0

    .line 366
    .restart local v6    # "downTime":J
    .restart local v8    # "eventTime":J
    .restart local v10    # "action":I
    .restart local v13    # "metaState":I
    .restart local v14    # "device":I
    .restart local v18    # "x":F
    .restart local v19    # "y":F
    .restart local v20    # "pressure":F
    .restart local v21    # "size":F
    .restart local v43    # "edgeFlags":I
    .restart local v53    # "pointerId":I
    .restart local v86    # "xPrecision":F
    .restart local v90    # "yPrecision":F
    :cond_9
    new-instance v5, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v5, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto/16 :goto_2

    .line 373
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :cond_a
    new-instance v5, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v5, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto/16 :goto_3

    .line 387
    :cond_b
    if-nez v53, :cond_7

    .line 388
    invoke-virtual {v5, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v86

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v21}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 395
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v10, v0, :cond_c

    .line 396
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    move-object/from16 v17, v0

    const/16 v22, 0x1

    aget v17, v17, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 398
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v18, v16, v17

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v19, v16, v17
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 420
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "pressure":F
    .end local v21    # "size":F
    .end local v43    # "edgeFlags":I
    .end local v53    # "pointerId":I
    .end local v86    # "xPrecision":F
    .end local v90    # "yPrecision":F
    :cond_d
    const-string v16, "RotateScreen"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_10

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 422
    const/16 v16, 0x0

    :try_start_3
    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    .line 423
    .local v69, "rotationDegree":I
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v51

    .line 424
    .local v51, "persist":I
    if-eqz v69, :cond_e

    const/16 v16, 0x1

    move/from16 v0, v69

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    const/16 v16, 0x2

    move/from16 v0, v69

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    const/16 v16, 0x3

    move/from16 v0, v69

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 428
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v17, v0

    new-instance v22, Lcom/android/commands/monkey/MonkeyRotationEvent;

    if-eqz v51, :cond_f

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v69

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 431
    .end local v51    # "persist":I
    .end local v69    # "rotationDegree":I
    :catch_2
    move-exception v16

    goto/16 :goto_0

    .line 428
    .restart local v51    # "persist":I
    .restart local v69    # "rotationDegree":I
    :cond_f
    const/16 v16, 0x0

    goto :goto_5

    .line 437
    .end local v51    # "persist":I
    .end local v69    # "rotationDegree":I
    :cond_10
    const-string v16, "Tap"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_13

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_13

    .line 439
    const/16 v16, 0x0

    :try_start_4
    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 440
    .restart local v18    # "x":F
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 441
    .restart local v19    # "y":F
    const-wide/16 v78, 0x0

    .line 442
    .local v78, "tapDuration":J
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 443
    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v78

    .line 447
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 448
    .restart local v6    # "downTime":J
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    move/from16 v24, v18

    move/from16 v25, v19

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v40

    .line 452
    .local v40, "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 453
    const-wide/16 v16, 0x0

    cmp-long v16, v78, v16

    if-lez v16, :cond_12

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, v17

    move-wide/from16 v1, v78

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 456
    :cond_12
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    move/from16 v24, v18

    move/from16 v25, v19

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v41

    .line 460
    .local v41, "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 461
    .end local v6    # "downTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v40    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v41    # "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v78    # "tapDuration":J
    :catch_3
    move-exception v5

    .line 462
    .local v5, "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "// "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string v16, "PressAndHold"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_14

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 470
    const/16 v16, 0x0

    :try_start_5
    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 471
    .restart local v18    # "x":F
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 472
    .restart local v19    # "y":F
    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v56

    .line 475
    .local v56, "pressDuration":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 477
    .restart local v6    # "downTime":J
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    move/from16 v24, v18

    move/from16 v25, v19

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v40

    .line 481
    .restart local v40    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v41, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, v41

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 482
    .local v41, "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    add-long v22, v6, v56

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    add-long v22, v6, v56

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    move/from16 v24, v18

    move/from16 v25, v19

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v42

    .line 486
    .local v42, "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 490
    .end local v6    # "downTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v40    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v41    # "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v42    # "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v56    # "pressDuration":J
    :catch_4
    move-exception v5

    .line 491
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "// "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    const-string v16, "Drag"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_16

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 498
    const/16 v16, 0x0

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v87

    .line 499
    .local v87, "xStart":F
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v91

    .line 500
    .local v91, "yStart":F
    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v85

    .line 501
    .local v85, "xEnd":F
    const/16 v16, 0x3

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v89

    .line 502
    .local v89, "yEnd":F
    const/16 v16, 0x4

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v73

    .line 504
    .local v73, "stepCount":I
    move/from16 v18, v87

    .line 505
    .restart local v18    # "x":F
    move/from16 v19, v91

    .line 506
    .restart local v19    # "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 507
    .restart local v6    # "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 509
    .restart local v8    # "eventTime":J
    if-lez v73, :cond_16

    .line 510
    sub-float v16, v85, v87

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v88, v16, v17

    .line 511
    .local v88, "xStep":F
    sub-float v16, v89, v91

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v92, v16, v17

    .line 513
    .local v92, "yStep":F
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    move/from16 v24, v18

    move/from16 v25, v19

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    .line 516
    .local v5, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 518
    const/16 v44, 0x0

    .local v44, "i":I
    :goto_6
    move/from16 v0, v44

    move/from16 v1, v73

    if-ge v0, v1, :cond_15

    .line 519
    add-float v18, v18, v88

    .line 520
    add-float v19, v19, v92

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 522
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v17, 0x2

    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    move/from16 v24, v18

    move/from16 v25, v19

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 518
    add-int/lit8 v44, v44, 0x1

    goto :goto_6

    .line 527
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 528
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    move/from16 v24, v18

    move/from16 v25, v19

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 535
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v44    # "i":I
    .end local v73    # "stepCount":I
    .end local v85    # "xEnd":F
    .end local v87    # "xStart":F
    .end local v88    # "xStep":F
    .end local v89    # "yEnd":F
    .end local v91    # "yStart":F
    .end local v92    # "yStep":F
    :cond_16
    const-string v16, "PinchZoom"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_18

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 537
    const/16 v16, 0x0

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v58

    .line 538
    .local v58, "pt1xStart":F
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v61

    .line 539
    .local v61, "pt1yStart":F
    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v55

    .line 540
    .local v55, "pt1xEnd":F
    const/16 v16, 0x3

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v60

    .line 542
    .local v60, "pt1yEnd":F
    const/16 v16, 0x4

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v64

    .line 543
    .local v64, "pt2xStart":F
    const/16 v16, 0x5

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v67

    .line 544
    .local v67, "pt2yStart":F
    const/16 v16, 0x6

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v63

    .line 545
    .local v63, "pt2xEnd":F
    const/16 v16, 0x7

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v66

    .line 547
    .local v66, "pt2yEnd":F
    const/16 v16, 0x8

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v73

    .line 549
    .restart local v73    # "stepCount":I
    move/from16 v24, v58

    .line 550
    .local v24, "x1":F
    move/from16 v25, v61

    .line 551
    .local v25, "y1":F
    move/from16 v28, v64

    .line 552
    .local v28, "x2":F
    move/from16 v29, v67

    .line 554
    .local v29, "y2":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 555
    .restart local v6    # "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 557
    .restart local v8    # "eventTime":J
    if-lez v73, :cond_18

    .line 558
    sub-float v16, v55, v58

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v59, v16, v17

    .line 559
    .local v59, "pt1xStep":F
    sub-float v16, v60, v61

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v62, v16, v17

    .line 561
    .local v62, "pt1yStep":F
    sub-float v16, v63, v64

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v65, v16, v17

    .line 562
    .local v65, "pt2xStep":F
    sub-float v16, v66, v67

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v68, v16, v17

    .line 564
    .local v68, "pt2yStep":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v22, 0x105

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 571
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_7
    move/from16 v0, v44

    move/from16 v1, v73

    if-ge v0, v1, :cond_17

    .line 572
    add-float v24, v24, v59

    .line 573
    add-float v25, v25, v62

    .line 574
    add-float v28, v28, v65

    .line 575
    add-float v29, v29, v68

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v22, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v26

    const/16 v27, 0x1

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v31, 0x40a00000    # 5.0f

    invoke-virtual/range {v26 .. v31}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 571
    add-int/lit8 v44, v44, 0x1

    goto :goto_7

    .line 582
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v22, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 590
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v24    # "x1":F
    .end local v25    # "y1":F
    .end local v28    # "x2":F
    .end local v29    # "y2":F
    .end local v44    # "i":I
    .end local v55    # "pt1xEnd":F
    .end local v58    # "pt1xStart":F
    .end local v59    # "pt1xStep":F
    .end local v60    # "pt1yEnd":F
    .end local v61    # "pt1yStart":F
    .end local v62    # "pt1yStep":F
    .end local v63    # "pt2xEnd":F
    .end local v64    # "pt2xStart":F
    .end local v65    # "pt2xStep":F
    .end local v66    # "pt2yEnd":F
    .end local v67    # "pt2yStart":F
    .end local v68    # "pt2yStep":F
    .end local v73    # "stepCount":I
    :cond_18
    const-string v16, "DispatchFlip"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_19

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    .line 591
    const/16 v16, 0x0

    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v48

    .line 592
    .local v48, "keyboardOpen":Z
    new-instance v5, Lcom/android/commands/monkey/MonkeyFlipEvent;

    move/from16 v0, v48

    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 593
    .local v5, "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 597
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    .end local v48    # "keyboardOpen":Z
    :cond_19
    const-string v16, "LaunchActivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_1c

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1c

    .line 598
    const/16 v16, 0x0

    aget-object v52, p2, v16

    .line 599
    .local v52, "pkg_name":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v34, p2, v16

    .line 600
    .local v34, "cl_name":Ljava/lang/String;
    const-wide/16 v32, 0x0

    .line 602
    .local v32, "alarmTime":J
    new-instance v50, Landroid/content/ComponentName;

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .local v50, "mApp":Landroid/content/ComponentName;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1a

    .line 606
    const/16 v16, 0x2

    :try_start_6
    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-wide v32

    .line 613
    :cond_1a
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1b

    .line 614
    new-instance v5, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v50

    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 615
    .local v5, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 607
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    :catch_5
    move-exception v5

    .line 608
    .local v5, "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "// "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 617
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1b
    new-instance v5, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v50

    move-wide/from16 v1, v32

    invoke-direct {v5, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    .line 618
    .local v5, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 624
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    .end local v32    # "alarmTime":J
    .end local v34    # "cl_name":Ljava/lang/String;
    .end local v50    # "mApp":Landroid/content/ComponentName;
    .end local v52    # "pkg_name":Ljava/lang/String;
    :cond_1c
    const-string v16, "DeviceWakeUp"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_1d

    .line 625
    const-string v52, "com.google.android.powerutil"

    .line 626
    .restart local v52    # "pkg_name":Ljava/lang/String;
    const-string v34, "com.google.android.powerutil.WakeUpScreen"

    .line 627
    .restart local v34    # "cl_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    move-wide/from16 v38, v0

    .line 630
    .local v38, "deviceSleepTime":J
    new-instance v50, Landroid/content/ComponentName;

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .restart local v50    # "mApp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v17

    move-object/from16 v1, v50

    move-wide/from16 v2, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v22, 0x0

    const/16 v23, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v22, 0x1

    const/16 v23, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyWaitEvent;

    const-wide/16 v22, 0xbb8

    add-long v22, v22, v38

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v22, 0x0

    const/16 v23, 0x52

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v22, 0x1

    const/16 v23, 0x52

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v22, 0x0

    const/16 v23, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v22, 0x1

    const/16 v23, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 653
    .end local v34    # "cl_name":Ljava/lang/String;
    .end local v38    # "deviceSleepTime":J
    .end local v50    # "mApp":Landroid/content/ComponentName;
    .end local v52    # "pkg_name":Ljava/lang/String;
    :cond_1d
    const-string v16, "LaunchInstrumentation"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_1e

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    .line 654
    const/16 v16, 0x0

    aget-object v81, p2, v16

    .line 655
    .local v81, "test_name":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v72, p2, v16

    .line 656
    .local v72, "runner_name":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    move-object/from16 v0, v81

    move-object/from16 v1, v72

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .local v5, "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 662
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    .end local v72    # "runner_name":Ljava/lang/String;
    .end local v81    # "test_name":Ljava/lang/String;
    :cond_1e
    const-string v16, "UserWait"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_1f

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1f

    .line 664
    const/16 v16, 0x0

    :try_start_7
    aget-object v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v76, v0

    .line 665
    .local v76, "sleeptime":J
    new-instance v5, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-wide/from16 v0, v76

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 666
    .local v5, "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 667
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v76    # "sleeptime":J
    :catch_6
    move-exception v16

    goto/16 :goto_0

    .line 674
    :cond_1f
    const-string v16, "ProfileWait"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_20

    .line 675
    new-instance v5, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 676
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 681
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_20
    const-string v16, "DispatchPress"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_21

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_21

    .line 682
    const/16 v16, 0x0

    aget-object v47, p2, v16

    .line 683
    .local v47, "key_name":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v46

    .line 684
    .local v46, "keyCode":I
    if-eqz v46, :cond_0

    .line 687
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v1, v46

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 688
    .local v5, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 689
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/16 v16, 0x1

    move/from16 v0, v16

    move/from16 v1, v46

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 690
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 695
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v46    # "keyCode":I
    .end local v47    # "key_name":Ljava/lang/String;
    :cond_21
    const-string v16, "LongPress"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_22

    .line 697
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v16, 0x0

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 698
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 699
    new-instance v84, Lcom/android/commands/monkey/MonkeyWaitEvent;

    sget v16, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, v84

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 700
    .local v84, "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 701
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/16 v16, 0x1

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 702
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 706
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v84    # "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_22
    const-string v16, "PowerLog"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_23

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_23

    .line 707
    const/16 v16, 0x0

    aget-object v54, p2, v16

    .line 710
    .local v54, "power_log_type":Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_26

    .line 711
    new-instance v5, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object/from16 v0, v54

    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v5, "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 721
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v54    # "power_log_type":Ljava/lang/String;
    :cond_23
    :goto_8
    const-string v16, "WriteLog"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_24

    .line 722
    new-instance v5, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v5}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    .line 723
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 727
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_24
    const-string v16, "RunCmd"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_25

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_25

    .line 728
    const/16 v16, 0x0

    aget-object v35, p2, v16

    .line 729
    .local v35, "cmd":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v5, "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 734
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v35    # "cmd":Ljava/lang/String;
    :cond_25
    const-string v16, "DispatchString"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_27

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_27

    .line 735
    const/16 v16, 0x0

    aget-object v45, p2, v16

    .line 736
    .local v45, "input":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "input text "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 737
    .restart local v35    # "cmd":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 738
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 713
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v35    # "cmd":Ljava/lang/String;
    .end local v45    # "input":Ljava/lang/String;
    .restart local v54    # "power_log_type":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_23

    .line 714
    const/16 v16, 0x1

    aget-object v80, p2, v16

    .line 715
    .local v80, "test_case_status":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object/from16 v0, v54

    move-object/from16 v1, v80

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .local v5, "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8

    .line 742
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v54    # "power_log_type":Ljava/lang/String;
    .end local v80    # "test_case_status":Ljava/lang/String;
    :cond_27
    const-string v16, "StartCaptureFramerate"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_28

    .line 743
    new-instance v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    const-string v16, "start"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v5, "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 748
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_28
    const-string v16, "EndCaptureFramerate"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_29

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_29

    .line 749
    const/16 v16, 0x0

    aget-object v45, p2, v16

    .line 750
    .restart local v45    # "input":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    const-string v16, "end"

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 755
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    .end local v45    # "input":Ljava/lang/String;
    :cond_29
    const-string v16, "StartCaptureAppFramerate"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_2a

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2a

    .line 756
    const/16 v16, 0x0

    aget-object v4, p2, v16

    .line 757
    .local v4, "app":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    const-string v16, "start"

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v4}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .local v5, "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 762
    .end local v4    # "app":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    :cond_2a
    const-string v16, "EndCaptureAppFramerate"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 763
    const/16 v16, 0x0

    aget-object v4, p2, v16

    .line 764
    .restart local v4    # "app":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v49, p2, v16

    .line 765
    .local v49, "label":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    const-string v16, "end"

    move-object/from16 v0, v16

    move-object/from16 v1, v49

    invoke-direct {v5, v0, v4, v1}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 299
    .end local v4    # "app":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    .end local v49    # "label":Ljava/lang/String;
    :catch_7
    move-exception v16

    goto/16 :goto_0
.end method

.method private needSleep(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 850
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 857
    :goto_0
    return-void

    .line 854
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 780
    const/16 v4, 0x28

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 781
    .local v2, "index1":I
    const/16 v4, 0x29

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 783
    .local v3, "index2":I
    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 790
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 793
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->handleEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readHeader()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    iput-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 200
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    .line 201
    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    .line 202
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    .line 206
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v5, "count="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 211
    :try_start_0
    const-string v5, "count="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 232
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    return v3

    .line 217
    :cond_2
    const-string v5, "speed="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 219
    :try_start_1
    const-string v5, "count="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 220
    .restart local v2    # "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 221
    .end local v2    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 222
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 225
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v5, "linebyline"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 226
    iput-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    goto :goto_0

    .line 227
    :cond_4
    const-string v5, "start data >>"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    move v3, v4

    .line 228
    goto :goto_1
.end method

.method private readLines()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x64

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 244
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 251
    .end local v0    # "i":I
    .end local v1    # "line":Ljava/lang/String;
    :goto_1
    return v0

    .line 248
    .restart local v0    # "i":I
    .restart local v1    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 249
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    move v0, v2

    .line 251
    goto :goto_1
.end method

.method private readNextBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 827
    .local v0, "linesRead":I
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    if-nez v1, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    .line 829
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    .line 832
    :cond_0
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    if-eqz v1, :cond_2

    .line 833
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readOneLine()I

    move-result v0

    .line 838
    :goto_0
    if-nez v0, :cond_1

    .line 839
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    .line 841
    :cond_1
    return-void

    .line 835
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readLines()I

    move-result v0

    goto :goto_0
.end method

.method private readOneLine()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 263
    const/4 v1, 0x0

    .line 267
    :goto_0
    return v1

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 266
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private resetValue()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    .line 183
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 184
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 185
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 186
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 187
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 188
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 189
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 957
    const-wide/16 v2, -0x1

    .line 960
    .local v2, "recordedEventTime":J
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 962
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeyEvent;

    .line 970
    .local v1, "ev":Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 975
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    .line 976
    check-cast v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    .line 981
    .end local v1    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1
    :goto_0
    return-object v1

    .line 963
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v4

    .line 964
    goto :goto_0

    .line 971
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    move-object v1, v4

    .line 972
    goto :goto_0

    .line 977
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_2
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_3
    move-object v4, v1

    .line 979
    check-cast v4, Lcom/android/commands/monkey/MonkeyMotionEvent;

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    goto :goto_0
.end method

.method public setVerbose(I)V
    .locals 0
    .param p1, "verbose"    # I

    .prologue
    .line 882
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 883
    return-void
.end method

.method public validate()Z
    .locals 6

    .prologue
    .line 868
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    move-result v1

    .line 869
    .local v1, "validHeader":Z
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    if-lez v2, :cond_0

    .line 875
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events with speed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 877
    .end local v1    # "validHeader":Z
    :cond_0
    :goto_0
    return v1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method
