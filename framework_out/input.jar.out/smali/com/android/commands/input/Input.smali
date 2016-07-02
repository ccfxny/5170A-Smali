.class public Lcom/android/commands/input/Input;
.super Ljava/lang/Object;
.source "Input.java"


# static fields
.field private static final INVALID_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for command: "

.field private static final SOURCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Input"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/android/commands/input/Input$1;

    invoke-direct {v0}, Lcom/android/commands/input/Input$1;-><init>()V

    sput-object v0, Lcom/android/commands/input/Input;->SOURCES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getSource(II)I
    .locals 0
    .param p0, "inputSource"    # I
    .param p1, "defaultSource"    # I

    .prologue
    .line 268
    if-nez p0, :cond_0

    .end local p1    # "defaultSource":I
    :goto_0
    return p1

    .restart local p1    # "defaultSource":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 232
    const-string v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 235
    return-void
.end method

.method private injectMotionEvent(IIJFFF)V
    .locals 23
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "when"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F

    .prologue
    .line 248
    const/high16 v21, 0x3f800000    # 1.0f

    .line 249
    .local v21, "DEFAULT_SIZE":F
    const/16 v18, 0x0

    .line 250
    .local v18, "DEFAULT_META_STATE":I
    const/high16 v19, 0x3f800000    # 1.0f

    .line 251
    .local v19, "DEFAULT_PRECISION_X":F
    const/high16 v20, 0x3f800000    # 1.0f

    .line 252
    .local v20, "DEFAULT_PRECISION_Y":F
    const/16 v16, 0x0

    .line 253
    .local v16, "DEFAULT_DEVICE_ID":I
    const/16 v17, 0x0

    .line 254
    .local v17, "DEFAULT_EDGE_FLAGS":I
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 257
    .local v22, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 258
    const-string v2, "Input"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectMotionEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 261
    return-void
.end method

.method private static final lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 264
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lcom/android/commands/input/Input;

    invoke-direct {v0}, Lcom/android/commands/input/Input;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/input/Input;->run([Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .locals 14
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 63
    array-length v0, p1

    if-ge v0, v2, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v9, 0x0

    .line 69
    .local v9, "index":I
    aget-object v7, p1, v9

    .line 70
    .local v7, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 71
    .local v1, "inputSource":I
    sget-object v0, Lcom/android/commands/input/Input;->SOURCES:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/android/commands/input/Input;->SOURCES:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    add-int/lit8 v9, v9, 0x1

    .line 74
    aget-object v7, p1, v9

    .line 76
    :cond_2
    array-length v0, p1

    sub-int v11, v0, v9

    .line 79
    .local v11, "length":I
    :try_start_0
    const-string v0, "text"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    if-ne v11, v3, :cond_3

    .line 81
    const/16 v0, 0x101

    invoke-static {v1, v0}, Lcom/android/commands/input/Input;->getSource(II)I

    move-result v1

    .line 82
    add-int/lit8 v0, v9, 0x1

    aget-object v0, p1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/commands/input/Input;->sendText(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    :cond_3
    :goto_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Invalid arguments for command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    goto :goto_0

    .line 85
    :cond_4
    :try_start_1
    const-string v0, "keyevent"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    if-lt v11, v3, :cond_3

    .line 87
    const-string v0, "--longpress"

    add-int/lit8 v2, v9, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 88
    .local v12, "longpress":Z
    if-eqz v12, :cond_6

    add-int/lit8 v13, v9, 0x2

    .line 89
    .local v13, "start":I
    :goto_2
    const/16 v0, 0x101

    invoke-static {v1, v0}, Lcom/android/commands/input/Input;->getSource(II)I

    move-result v1

    .line 90
    if-le v11, v13, :cond_3

    .line 91
    move v8, v13

    .local v8, "i":I
    :goto_3
    if-ge v8, v11, :cond_0

    .line 92
    aget-object v0, p1, v8

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v10

    .line 93
    .local v10, "keyCode":I
    if-nez v10, :cond_5

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v10

    .line 96
    :cond_5
    invoke-direct {p0, v1, v10, v12}, Lcom/android/commands/input/Input;->sendKeyEvent(IIZ)V

    .line 91
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 88
    .end local v8    # "i":I
    .end local v10    # "keyCode":I
    .end local v13    # "start":I
    :cond_6
    add-int/lit8 v13, v9, 0x1

    goto :goto_2

    .line 101
    .end local v12    # "longpress":Z
    :cond_7
    const-string v0, "tap"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    if-ne v11, v4, :cond_3

    .line 103
    const/16 v0, 0x1002

    invoke-static {v1, v0}, Lcom/android/commands/input/Input;->getSource(II)I

    move-result v1

    .line 104
    add-int/lit8 v0, v9, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-int/lit8 v2, v9, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/commands/input/Input;->sendTap(IFF)V

    goto/16 :goto_0

    .line 108
    :cond_8
    const-string v0, "swipe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    const/4 v6, -0x1

    .line 110
    .local v6, "duration":I
    const/16 v0, 0x1002

    invoke-static {v1, v0}, Lcom/android/commands/input/Input;->getSource(II)I

    move-result v1

    .line 111
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1

    .line 115
    :goto_4
    :pswitch_0
    add-int/lit8 v0, v9, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-int/lit8 v0, v9, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-int/lit8 v0, v9, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-int/lit8 v0, v9, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/input/Input;->sendSwipe(IFFFFI)V

    goto/16 :goto_0

    .line 113
    :pswitch_1
    add-int/lit8 v0, v9, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    .line 121
    .end local v6    # "duration":I
    :cond_9
    const-string v0, "press"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 122
    const v0, 0x10004

    invoke-static {v1, v0}, Lcom/android/commands/input/Input;->getSource(II)I

    move-result v1

    .line 123
    if-ne v11, v2, :cond_3

    .line 124
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/commands/input/Input;->sendTap(IFF)V

    goto/16 :goto_0

    .line 127
    :cond_a
    const-string v0, "roll"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    const v0, 0x10004

    invoke-static {v1, v0}, Lcom/android/commands/input/Input;->getSource(II)I

    move-result v1

    .line 129
    if-ne v11, v4, :cond_3

    .line 130
    add-int/lit8 v0, v9, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-int/lit8 v2, v9, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/commands/input/Input;->sendMove(IFF)V

    goto/16 :goto_0

    .line 135
    :cond_b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendKeyEvent(IIZ)V
    .locals 14
    .param p1, "inputSource"    # I
    .param p2, "keyCode"    # I
    .param p3, "longpress"    # Z

    .prologue
    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 184
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v4, v2

    move/from16 v7, p2

    move v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 186
    if-eqz p3, :cond_0

    .line 187
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x80

    move-wide v4, v2

    move/from16 v7, p2

    move v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 191
    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v4, v2

    move/from16 v7, p2

    move v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 193
    return-void
.end method

.method private sendMove(IFF)V
    .locals 9
    .param p1, "inputSource"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 228
    .local v4, "now":J
    const/4 v3, 0x2

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 229
    return-void
.end method

.method private sendSwipe(IFFFFI)V
    .locals 18
    .param p1, "inputSource"    # I
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "duration"    # I

    .prologue
    .line 202
    if-gez p6, :cond_0

    .line 203
    const/16 p6, 0x12c

    .line 205
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 206
    .local v6, "now":J
    const/4 v5, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 207
    move-wide/from16 v16, v6

    .line 208
    .local v16, "startTime":J
    move/from16 v0, p6

    int-to-long v4, v0

    add-long v14, v16, v4

    .line 209
    .local v14, "endTime":J
    :goto_0
    cmp-long v3, v6, v14

    if-gez v3, :cond_1

    .line 210
    sub-long v12, v6, v16

    .line 211
    .local v12, "elapsedTime":J
    long-to-float v3, v12

    move/from16 v0, p6

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 212
    .local v2, "alpha":F
    const/4 v5, 0x2

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/commands/input/Input;->lerp(FFF)F

    move-result v8

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/commands/input/Input;->lerp(FFF)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 215
    goto :goto_0

    .line 216
    .end local v2    # "alpha":F
    .end local v12    # "elapsedTime":J
    :cond_1
    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 217
    return-void
.end method

.method private sendTap(IFF)V
    .locals 9
    .param p1, "inputSource"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 197
    .local v4, "now":J
    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 198
    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 199
    return-void
.end method

.method private sendText(ILjava/lang/String;)V
    .locals 9
    .param p1, "source"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 156
    .local v3, "escapeFlag":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 157
    if-eqz v3, :cond_0

    .line 158
    const/4 v3, 0x0

    .line 159
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x73

    if-ne v7, v8, :cond_0

    .line 160
    const/16 v7, 0x20

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 161
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 164
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_1

    .line 165
    const/4 v3, 0x1

    .line 156
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 171
    .local v1, "chars":[C
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    .line 172
    .local v6, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v6, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v4

    .line 173
    .local v4, "events":[Landroid/view/KeyEvent;
    const/4 v5, 0x0

    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_4

    .line 174
    aget-object v2, v4, v5

    .line 175
    .local v2, "e":Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    if-eq p1, v7, :cond_3

    .line 176
    invoke-virtual {v2, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 178
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 180
    .end local v2    # "e":Landroid/view/KeyEvent;
    :cond_4
    return-void
.end method

.method private showUsage()V
    .locals 5

    .prologue
    .line 272
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage: input [<source>] <command> [<arg>...]"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 274
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "The sources are: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    sget-object v2, Lcom/android/commands/input/Input;->SOURCES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    .local v1, "src":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    .end local v1    # "src":Ljava/lang/String;
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 279
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "The commands and default sources are:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "      text <string> (Default: touchscreen)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "      keyevent [--longpress] <key code number or name> ... (Default: keyboard)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "      tap <x> <y> (Default: touchscreen)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "      press (Default: trackball)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "      roll <dx> <dy> (Default: trackball)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    return-void
.end method
