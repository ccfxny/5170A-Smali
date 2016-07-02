.class public Landroid/test/TouchUtils;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/TouchUtils$1;,
        Landroid/test/TouchUtils$ViewStateSnapshot;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    return-void
.end method

.method public static clickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 25
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 316
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v24, v0

    .line 317
    .local v24, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v23

    .line 320
    .local v23, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v22

    .line 322
    .local v22, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v24, v6

    int-to-float v6, v6

    move/from16 v0, v23

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, v6, v9

    .line 323
    .local v7, "x":F
    const/4 v6, 0x1

    aget v6, v24, v6

    int-to-float v6, v6

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 325
    .local v8, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v20

    .line 327
    .local v20, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 328
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 330
    .local v4, "eventTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 332
    .local v19, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 333
    invoke-virtual/range {v20 .. v20}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v21

    .line 338
    .local v21, "touchSlop":I
    const/4 v14, 0x2

    move/from16 v0, v21

    int-to-float v6, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    add-float v15, v7, v6

    move/from16 v0, v21

    int-to-float v6, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    add-float v16, v8, v6

    const/16 v17, 0x0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 340
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 341
    invoke-virtual/range {v20 .. v20}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 344
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 345
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 346
    invoke-virtual/range {v20 .. v20}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 349
    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v18

    .line 351
    .local v18, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static drag(Landroid/test/ActivityInstrumentationTestCase;FFFFI)V
    .locals 0
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 738
    invoke-static/range {p0 .. p5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 739
    return-void
.end method

.method public static drag(Landroid/test/InstrumentationTestCase;FFFFI)V
    .locals 15
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "stepCount"    # I

    .prologue
    .line 753
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v12

    .line 755
    .local v12, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 756
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 758
    .local v4, "eventTime":J
    move/from16 v8, p3

    .line 759
    .local v8, "y":F
    move/from16 v7, p1

    .line 761
    .local v7, "x":F
    sub-float v6, p4, p3

    move/from16 v0, p5

    int-to-float v9, v0

    div-float v14, v6, v9

    .line 762
    .local v14, "yStep":F
    sub-float v6, p2, p1

    move/from16 v0, p5

    int-to-float v9, v0

    div-float v13, v6, v9

    .line 764
    .local v13, "xStep":F
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 766
    .local v10, "event":Landroid/view/MotionEvent;
    invoke-virtual {v12, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 767
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p5

    if-ge v11, v0, :cond_0

    .line 768
    add-float/2addr v8, v14

    .line 769
    add-float/2addr v7, v13

    .line 770
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 771
    const/4 v6, 0x2

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 772
    invoke-virtual {v12, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 767
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 775
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 776
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 777
    invoke-virtual {v12, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 778
    invoke-virtual {v12}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 779
    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/ActivityInstrumentationTestCase;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .locals 8
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 57
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 58
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 60
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v0, v2

    .line 61
    .local v1, "x":F
    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    .line 62
    .local v3, "fromY":F
    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v4, v0, v2

    .line 64
    .local v4, "toY":F
    const/4 v5, 0x4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 65
    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/ActivityInstrumentationTestCase;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .locals 8
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 87
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 88
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 90
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v0, v2

    .line 91
    .local v1, "x":F
    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    .line 92
    .local v3, "fromY":F
    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v4, v0, v2

    .line 94
    .local v4, "toY":F
    const/4 v5, 0x4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 95
    return-void
.end method

.method public static dragViewBy(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 538
    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .locals 9
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 560
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 562
    .local v8, "xy":[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 564
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 565
    .local v6, "fromX":I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 567
    .local v7, "fromY":I
    mul-int v0, p3, p3

    mul-int v1, p4, p4

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 569
    .local v5, "distance":I
    int-to-float v1, v6

    add-int v0, v6, p3

    int-to-float v2, v0

    int-to-float v3, v7

    add-int v0, v7, p4

    int-to-float v4, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 571
    return v5
.end method

.method public static dragViewTo(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 593
    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .locals 11
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .prologue
    .line 610
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 612
    .local v10, "xy":[I
    invoke-static {p1, p2, v10}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 614
    const/4 v0, 0x0

    aget v8, v10, v0

    .line 615
    .local v8, "fromX":I
    const/4 v0, 0x1

    aget v9, v10, v0

    .line 617
    .local v9, "fromY":I
    sub-int v6, v8, p3

    .line 618
    .local v6, "deltaX":I
    sub-int v7, v9, p4

    .line 620
    .local v7, "deltaY":I
    mul-int v0, v6, v6

    mul-int v1, v7, v7

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 621
    .local v5, "distance":I
    int-to-float v1, v8

    int-to-float v2, p3

    int-to-float v3, v9

    int-to-float v4, p4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 623
    return v5
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 2
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 179
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 207
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 189
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 190
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V
    .locals 10
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "stepCount"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 219
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 221
    .local v6, "screenHeight":I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 222
    .local v9, "xy":[I
    invoke-virtual {p2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 224
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 225
    .local v8, "viewWidth":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 227
    .local v7, "viewHeight":I
    const/4 v0, 0x0

    aget v0, v9, v0

    int-to-float v0, v0

    int-to-float v2, v8

    div-float/2addr v2, v5

    add-float v1, v0, v2

    .line 228
    .local v1, "x":F
    const/4 v0, 0x1

    aget v0, v9, v0

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v2, v5

    add-float v3, v0, v2

    .line 229
    .local v3, "fromY":F
    add-int/lit8 v0, v6, -0x1

    int-to-float v4, v0

    .local v4, "toY":F
    move-object v0, p0

    move v2, v1

    move v5, p3

    .line 231
    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 232
    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 428
    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .locals 0
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    invoke-static {p0, p1, p2}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 444
    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 1
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 453
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 454
    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V
    .locals 9
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 464
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 465
    .local v8, "xy":[I
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 468
    .local v7, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 470
    .local v6, "viewHeight":I
    const/4 v0, 0x0

    aget v0, v8, v0

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v2, v5

    add-float v1, v0, v2

    .line 471
    .local v1, "x":F
    const/4 v0, 0x1

    aget v0, v8, v0

    int-to-float v0, v0

    int-to-float v2, v6

    div-float/2addr v2, v5

    add-float v3, v0, v2

    .line 472
    .local v3, "fromY":F
    const/4 v4, 0x0

    .local v4, "toY":F
    move-object v0, p0

    move v2, v1

    move v5, p2

    .line 474
    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 475
    return-void
.end method

.method public static dragViewToX(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 644
    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .locals 9
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I

    .prologue
    .line 659
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 661
    .local v8, "xy":[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 663
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 664
    .local v6, "fromX":I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 666
    .local v7, "fromY":I
    sub-int v5, v6, p3

    .line 668
    .local v5, "deltaX":I
    int-to-float v1, v6

    int-to-float v2, p3

    int-to-float v3, v7

    int-to-float v4, v7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 670
    return v5
.end method

.method public static dragViewToY(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 691
    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .locals 9
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toY"    # I

    .prologue
    .line 706
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 708
    .local v8, "xy":[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 710
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 711
    .local v6, "fromX":I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 713
    .local v7, "fromY":I
    sub-int v5, v7, p3

    .line 715
    .local v5, "deltaY":I
    int-to-float v1, v6

    int-to-float v2, v6

    int-to-float v3, v7

    int-to-float v4, p3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 717
    return v5
.end method

.method private static getStartLocation(Landroid/view/View;I[I)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "gravity"    # I
    .param p2, "xy"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 487
    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 490
    .local v1, "viewWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 492
    .local v0, "viewHeight":I
    and-int/lit8 v2, p1, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 505
    :goto_0
    :sswitch_0
    and-int/lit8 v2, p1, 0x7

    packed-switch v2, :pswitch_data_0

    .line 517
    :goto_1
    :pswitch_0
    return-void

    .line 496
    :sswitch_1
    aget v2, p2, v5

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_0

    .line 499
    :sswitch_2
    aget v2, p2, v5

    add-int/lit8 v3, v0, -0x1

    add-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_0

    .line 509
    :pswitch_1
    aget v2, p2, v4

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    aput v2, p2, v4

    goto :goto_1

    .line 512
    :pswitch_2
    aget v2, p2, v4

    add-int/lit8 v3, v1, -0x1

    add-int/2addr v2, v3

    aput v2, p2, v4

    goto :goto_1

    .line 492
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static longClickView(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 0
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V

    .line 368
    return-void
.end method

.method public static longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 25
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 377
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v24, v0

    .line 378
    .local v24, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v23

    .line 381
    .local v23, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v22

    .line 383
    .local v22, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v24, v6

    int-to-float v6, v6

    move/from16 v0, v23

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, v6, v9

    .line 384
    .local v7, "x":F
    const/4 v6, 0x1

    aget v6, v24, v6

    int-to-float v6, v6

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 386
    .local v8, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v20

    .line 388
    .local v20, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 389
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 391
    .local v4, "eventTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 393
    .local v19, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 394
    invoke-virtual/range {v20 .. v20}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v21

    .line 398
    .local v21, "touchSlop":I
    const/4 v14, 0x2

    div-int/lit8 v6, v21, 0x2

    int-to-float v6, v6

    add-float v15, v7, v6

    div-int/lit8 v6, v21, 0x2

    int-to-float v6, v6

    add-float v16, v8, v6

    const/16 v17, 0x0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 400
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 401
    invoke-virtual/range {v20 .. v20}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 404
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v9

    float-to-long v10, v6

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 410
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 411
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 412
    invoke-virtual/range {v20 .. v20}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 413
    return-void

    .line 405
    :catch_0
    move-exception v18

    .line 406
    .local v18, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static scrollToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 111
    return-void
.end method

.method public static scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 124
    new-instance v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    invoke-direct {v0, p2, v3}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils$1;)V

    .line 126
    .local v0, "next":Landroid/test/TouchUtils$ViewStateSnapshot;
    :cond_0
    move-object v1, v0

    .line 127
    .local v1, "prev":Landroid/test/TouchUtils$ViewStateSnapshot;
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 128
    new-instance v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    .end local v0    # "next":Landroid/test/TouchUtils$ViewStateSnapshot;
    invoke-direct {v0, p2, v3}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils$1;)V

    .line 129
    .restart local v0    # "next":Landroid/test/TouchUtils$ViewStateSnapshot;
    invoke-virtual {v1, v0}, Landroid/test/TouchUtils$ViewStateSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    return-void
.end method

.method public static scrollToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 146
    return-void
.end method

.method public static scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    invoke-direct {v0, p2, v3}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils$1;)V

    .line 160
    .local v0, "next":Landroid/test/TouchUtils$ViewStateSnapshot;
    :cond_0
    move-object v1, v0

    .line 161
    .local v1, "prev":Landroid/test/TouchUtils$ViewStateSnapshot;
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 162
    new-instance v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    .end local v0    # "next":Landroid/test/TouchUtils$ViewStateSnapshot;
    invoke-direct {v0, p2, v3}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils$1;)V

    .line 163
    .restart local v0    # "next":Landroid/test/TouchUtils$ViewStateSnapshot;
    invoke-virtual {v1, v0}, Landroid/test/TouchUtils$ViewStateSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    return-void
.end method

.method public static tapView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 24
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v23, v0

    .line 242
    .local v23, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 245
    .local v22, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    .line 247
    .local v21, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, v6, v9

    .line 248
    .local v7, "x":F
    const/4 v6, 0x1

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 250
    .local v8, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v19

    .line 252
    .local v19, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 253
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 255
    .local v4, "eventTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 257
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 258
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    .line 262
    .local v20, "touchSlop":I
    const/4 v14, 0x2

    move/from16 v0, v20

    int-to-float v6, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    add-float v15, v7, v6

    move/from16 v0, v20

    int-to-float v6, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    add-float v16, v8, v6

    const/16 v17, 0x0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 264
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 265
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 268
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 269
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 270
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 271
    return-void
.end method

.method public static touchAndCancelView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 24
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 281
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v23, v0

    .line 282
    .local v23, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 285
    .local v22, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    .line 287
    .local v21, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, v6, v9

    .line 288
    .local v7, "x":F
    const/4 v6, 0x1

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 290
    .local v8, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v19

    .line 292
    .local v19, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 293
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 295
    .local v4, "eventTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 297
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 298
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    .line 302
    .local v20, "touchSlop":I
    const/4 v14, 0x3

    move/from16 v0, v20

    int-to-float v6, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    add-float v15, v7, v6

    move/from16 v0, v20

    int-to-float v6, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    add-float v16, v8, v6

    const/16 v17, 0x0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 304
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 305
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 307
    return-void
.end method
