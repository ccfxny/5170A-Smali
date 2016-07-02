.class public Lcom/android/commands/monkey/MonkeySourceRandom;
.super Ljava/lang/Object;
.source "MonkeySourceRandom.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field public static final FACTORZ_COUNT:I = 0xb

.field public static final FACTOR_ANYTHING:I = 0xa

.field public static final FACTOR_APPSWITCH:I = 0x8

.field public static final FACTOR_FLIP:I = 0x9

.field public static final FACTOR_MAJORNAV:I = 0x6

.field public static final FACTOR_MOTION:I = 0x1

.field public static final FACTOR_NAV:I = 0x5

.field public static final FACTOR_PINCHZOOM:I = 0x2

.field public static final FACTOR_ROTATION:I = 0x4

.field public static final FACTOR_SYSOPS:I = 0x7

.field public static final FACTOR_TOUCH:I = 0x0

.field public static final FACTOR_TRACKBALL:I = 0x3

.field private static final GESTURE_DRAG:I = 0x1

.field private static final GESTURE_PINCH_OR_ZOOM:I = 0x2

.field private static final GESTURE_TAP:I

.field private static final MAJOR_NAV_KEYS:[I

.field private static final NAV_KEYS:[I

.field private static final PHYSICAL_KEY_EXISTS:[Z

.field private static final SCREEN_ROTATION_DEGREES:[I

.field private static final SYS_KEYS:[I


# instance fields
.field private mEventCount:I

.field private mFactors:[F

.field private mKeyboardOpen:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mRandom:Ljava/util/Random;

.field private mThrottle:J

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 37
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    .line 50
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    .line 57
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 60
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 64
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_1
    new-array v1, v4, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SCREEN_ROTATION_DEGREES:[I

    return-void

    .line 37
    :array_0
    .array-data 4
        0x13
        0x14
        0x15
        0x16
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x52
        0x17
    .end array-data

    .line 50
    :array_2
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x18
        0x19
        0xa4
        0x5b
    .end array-data

    .line 68
    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/util/ArrayList;JZ)V
    .locals 5
    .param p1, "random"    # Ljava/util/Random;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Random;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .local p2, "MainApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v0, 0xb

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    .line 97
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    .line 100
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mThrottle:J

    .line 103
    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    .line 125
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput v4, v0, v2

    .line 126
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    aput v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 129
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 130
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x5

    const/high16 v2, 0x41c80000    # 25.0f

    aput v2, v0, v1

    .line 131
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 132
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 133
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 134
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v1, 0x9

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 135
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v1, 0xa

    const/high16 v2, 0x41500000    # 13.0f

    aput v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 138
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    .line 139
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 141
    return-void
.end method

.method private adjustEventFactors()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/high16 v12, 0x42c80000    # 100.0f

    const/16 v11, 0xb

    .line 148
    const/4 v6, 0x0

    .line 149
    .local v6, "userSum":F
    const/4 v1, 0x0

    .line 150
    .local v1, "defaultSum":F
    const/4 v0, 0x0

    .line 151
    .local v0, "defaultCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_1

    .line 152
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_0

    .line 153
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    sub-float/2addr v6, v8

    .line 151
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    add-float/2addr v1, v8

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_1
    cmpl-float v8, v6, v12

    if-lez v8, :cond_3

    .line 162
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "** Event weights > 100%"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    :cond_2
    :goto_2
    return v7

    .line 167
    :cond_3
    if-nez v0, :cond_5

    const v8, 0x42c7cccd    # 99.9f

    cmpg-float v8, v6, v8

    if-ltz v8, :cond_4

    const v8, 0x42c83333    # 100.1f

    cmpl-float v8, v6, v8

    if-lez v8, :cond_5

    .line 168
    :cond_4
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "** Event weights != 100%"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 173
    :cond_5
    sub-float v3, v12, v6

    .line 174
    .local v3, "defaultsTarget":F
    div-float v2, v3, v1

    .line 177
    .local v2, "defaultsAdjustment":F
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v11, :cond_7

    .line 178
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_6

    .line 179
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    iget-object v9, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v9, v9, v4

    neg-float v9, v9

    aput v9, v8, v4

    .line 177
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 181
    :cond_6
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v9, v8, v4

    mul-float/2addr v9, v2

    aput v9, v8, v4

    goto :goto_4

    .line 186
    :cond_7
    iget v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    if-lez v8, :cond_8

    .line 187
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "// Event percentages:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_8

    .line 189
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "//   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 193
    :cond_8
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeys()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 198
    const/4 v5, 0x0

    .line 199
    .local v5, "sum":F
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v11, :cond_9

    .line 200
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    div-float/2addr v7, v12

    add-float/2addr v5, v7

    .line 201
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput v5, v7, v4

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 203
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_2
.end method

.method private generateEvents()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 395
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 396
    .local v0, "cls":F
    const/4 v2, 0x0

    .line 398
    .local v2, "lastKey":I
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 399
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    .line 450
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v3

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 402
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v4, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    .line 408
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateTrackballEvent(Ljava/util/Random;)V

    goto :goto_0

    .line 410
    :cond_3
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4

    .line 411
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateRotationEvent(Ljava/util/Random;)V

    goto :goto_0

    .line 417
    :cond_4
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    .line 418
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    .line 437
    :goto_1
    const/16 v5, 0x1a

    if-eq v2, v5, :cond_4

    if-eq v2, v8, :cond_4

    const/16 v5, 0xdf

    if-eq v2, v5, :cond_4

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_4

    .line 445
    new-instance v1, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v1, v4, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 446
    .local v1, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 448
    new-instance v1, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v1    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    invoke-direct {v1, v3, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 449
    .restart local v1    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_0

    .line 419
    .end local v1    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    :cond_5
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v8

    cmpg-float v5, v0, v5

    if-gez v5, :cond_6

    .line 420
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    goto :goto_1

    .line 421
    :cond_6
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7

    .line 422
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    goto :goto_1

    .line 423
    :cond_7
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_8

    .line 424
    new-instance v1, Lcom/android/commands/monkey/MonkeyActivityEvent;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 426
    .local v1, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 428
    .end local v1    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    :cond_8
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_a

    .line 429
    new-instance v1, Lcom/android/commands/monkey/MonkeyFlipEvent;

    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    invoke-direct {v1, v5}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 430
    .local v1, "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    if-nez v5, :cond_9

    :goto_2
    iput-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    .line 431
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_9
    move v3, v4

    .line 430
    goto :goto_2

    .line 434
    .end local v1    # "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    :cond_a
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    goto/16 :goto_1
.end method

.method private generatePointerEvent(Ljava/util/Random;I)V
    .locals 16
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "gesture"    # I

    .prologue
    .line 262
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 264
    .local v3, "display":Landroid/view/Display;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    move-result-object v7

    .line 265
    .local v7, "p1":Landroid/graphics/PointF;
    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    move-result-object v9

    .line 267
    .local v9, "v1":Landroid/graphics/PointF;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 269
    .local v4, "downAt":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 275
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 276
    const/16 v11, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 277
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_2

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_0
    const/4 v11, 0x2

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    move-result-object v8

    .line 287
    .local v8, "p2":Landroid/graphics/PointF;
    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    move-result-object v10

    .line 289
    .local v10, "v2":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v13, 0x105

    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x1

    iget v14, v8, Landroid/graphics/PointF;->x:F

    iget v15, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 296
    const/16 v11, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 297
    .restart local v2    # "count":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v8, v10}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x1

    iget v14, v8, Landroid/graphics/PointF;->x:F

    iget v15, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 297
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 307
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 308
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v8, v10}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v13, 0x106

    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x1

    iget v14, v8, Landroid/graphics/PointF;->x:F

    iget v15, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 316
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v8    # "p2":Landroid/graphics/PointF;
    .end local v10    # "v2":Landroid/graphics/PointF;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 321
    return-void
.end method

.method private generateRotationEvent(Ljava/util/Random;)V
    .locals 4
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v1, Lcom/android/commands/monkey/MonkeyRotationEvent;

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SCREEN_ROTATION_DEGREES:[I

    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->SCREEN_ROTATION_DEGREES:[I

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 389
    return-void
.end method

.method private generateTrackballEvent(Ljava/util/Random;)V
    .locals 13
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v6, 0x1

    const/16 v12, 0xa

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 353
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_1

    .line 355
    invoke-virtual {p1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v0, v5, -0x5

    .line 356
    .local v0, "dX":I
    invoke-virtual {p1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v1, v5, -0x5

    .line 358
    .local v1, "dY":I
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v5, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    const/4 v9, 0x2

    invoke-direct {v5, v9}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {v5, v7, v9, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    if-lez v4, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v9, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 358
    goto :goto_1

    .line 364
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    :cond_1
    invoke-virtual {p1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 367
    .local v2, "downAt":J
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v8, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v8, v7}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    invoke-virtual {v8, v2, v3}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    invoke-virtual {v8, v7, v11, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 372
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v8, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v8, v6}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    invoke-virtual {v8, v2, v3}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    invoke-virtual {v6, v7, v11, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 377
    .end local v2    # "downAt":J
    :cond_2
    return-void
.end method

.method public static getKeyCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "keyName"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 106
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    .line 324
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private randomVector(Ljava/util/Random;)Landroid/graphics/PointF;
    .locals 5
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 328
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v1, v3

    mul-float/2addr v1, v4

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "point"    # Landroid/graphics/PointF;
    .param p4, "vector"    # Landroid/graphics/PointF;

    .prologue
    const/4 v3, 0x0

    .line 332
    iget v0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/PointF;->x:F

    .line 334
    iget v0, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 336
    return-void
.end method

.method private static validateKeyCategory(Ljava/lang/String;[IF)Z
    .locals 4
    .param p0, "catName"    # Ljava/lang/String;
    .param p1, "keys"    # [I
    .param p2, "factor"    # F

    .prologue
    const/4 v1, 0x1

    .line 207
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 211
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget v3, p1, v0

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no physical keys but with factor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateKeys()Z
    .locals 4

    .prologue
    .line 223
    const-string v0, "NAV_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MAJOR_NAV_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SYS_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public generateActivity()V
    .locals 4

    .prologue
    .line 465
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 467
    .local v0, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 468
    return-void
.end method

.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 2

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateEvents()V

    .line 478
    :cond_0
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    .line 479
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeyEvent;

    .line 480
    .local v0, "e":Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;

    .line 481
    return-object v0
.end method

.method public setFactors(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput p2, v0, p1

    .line 244
    return-void
.end method

.method public setFactors([F)V
    .locals 4
    .param p1, "factors"    # [F

    .prologue
    .line 234
    const/16 v0, 0xb

    .line 235
    .local v0, "c":I
    array-length v2, p1

    if-ge v2, v0, :cond_0

    .line 236
    array-length v0, p1

    .line 238
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 239
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, p1, v1

    aput v3, v2, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    return-void
.end method

.method public setVerbose(I)V
    .locals 0
    .param p1, "verbose"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    .line 459
    return-void
.end method

.method public validate()Z
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->adjustEventFactors()Z

    move-result v0

    return v0
.end method
