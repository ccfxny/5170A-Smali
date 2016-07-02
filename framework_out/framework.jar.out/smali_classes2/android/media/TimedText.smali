.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BITMAP:I = 0x11

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STRUCT_WSTRING:I = 0x12

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x12

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBitMapFd:I

.field private mBitMapHeight:I

.field private mBitMapWidth:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextByteChars:[B

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 102
    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 103
    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 104
    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 105
    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 106
    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    .line 108
    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 109
    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 110
    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 111
    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 112
    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 113
    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 115
    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 116
    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Landroid/media/TimedText;->mTextByteChars:[B

    .line 120
    iput v2, p0, Landroid/media/TimedText;->mBitMapWidth:I

    .line 121
    iput v2, p0, Landroid/media/TimedText;->mBitMapHeight:I

    .line 122
    iput v2, p0, Landroid/media/TimedText;->mBitMapFd:I

    .line 376
    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    return-void
.end method

.method private containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 735
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/4 v0, 0x1

    .line 738
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 758
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    .line 721
    if-lt p1, v0, :cond_0

    const/16 v1, 0x12

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_1

    const/16 v1, 0x6b

    if-le p1, v1, :cond_2

    .line 723
    :cond_1
    const/4 v0, 0x0

    .line 725
    :cond_2
    return v0
.end method

.method private keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 411
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v13

    if-nez v13, :cond_0

    .line 413
    const/4 v13, 0x0

    .line 555
    :goto_0
    return v13

    .line 416
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 417
    .local v11, "type":I
    const/16 v13, 0x66

    if-ne v11, v13, :cond_7

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 419
    const/4 v13, 0x7

    if-eq v11, v13, :cond_1

    .line 420
    const/4 v13, 0x0

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 423
    .local v5, "mStartTimeMs":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 426
    const/16 v13, 0x10

    if-ne v11, v13, :cond_5

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 428
    .local v9, "textLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 429
    .local v8, "text":[B
    if-eqz v8, :cond_2

    array-length v13, v8

    if-nez v13, :cond_4

    .line 430
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 445
    .end local v5    # "mStartTimeMs":I
    .end local v8    # "text":[B
    .end local v9    # "textLen":I
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v13

    if-lez v13, :cond_a

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 447
    .local v3, "key":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v13

    if-nez v13, :cond_8

    .line 448
    const-string v13, "TimedText"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid timed text key found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v13, 0x0

    goto :goto_0

    .line 432
    .end local v3    # "key":I
    .restart local v5    # "mStartTimeMs":I
    .restart local v8    # "text":[B
    .restart local v9    # "textLen":I
    :cond_4
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v8}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    .line 434
    .end local v8    # "text":[B
    .end local v9    # "textLen":I
    :cond_5
    const/16 v13, 0x12

    if-ne v11, v13, :cond_6

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    .line 437
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 440
    .end local v5    # "mStartTimeMs":I
    :cond_7
    const/16 v13, 0x65

    if-eq v11, v13, :cond_3

    .line 441
    const-string v13, "TimedText"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid timed text key found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 452
    .restart local v3    # "key":I
    :cond_8
    const/4 v6, 0x0

    .line 454
    .local v6, "object":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    .line 546
    .end local v6    # "object":Ljava/lang/Object;
    :goto_2
    :pswitch_0
    if-eqz v6, :cond_3

    .line 547
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 548
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 456
    .restart local v6    # "object":Ljava/lang/Object;
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 458
    .local v6, "object":Ljava/util/List;
    goto :goto_2

    .line 461
    .local v6, "object":Ljava/lang/Object;
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 463
    .local v6, "object":Ljava/util/List;
    goto :goto_2

    .line 466
    .local v6, "object":Ljava/lang/Object;
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 468
    .local v6, "object":Ljava/util/List;
    goto :goto_2

    .line 471
    .local v6, "object":Ljava/lang/Object;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 473
    .local v6, "object":Ljava/util/List;
    goto :goto_2

    .line 476
    .local v6, "object":Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 479
    .local v6, "object":Ljava/util/List;
    goto :goto_2

    .line 482
    .local v6, "object":Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 485
    .local v6, "object":Ljava/util/List;
    goto :goto_2

    .line 488
    .local v6, "object":Ljava/lang/Object;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mWrapText:I

    .line 489
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 490
    .local v6, "object":Ljava/lang/Integer;
    goto :goto_2

    .line 493
    .local v6, "object":Ljava/lang/Object;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 494
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 495
    .local v6, "object":Ljava/lang/Integer;
    goto :goto_2

    .line 498
    .local v6, "object":Ljava/lang/Object;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 499
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 500
    .local v6, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 504
    .local v6, "object":Ljava/lang/Object;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 505
    .local v2, "horizontal":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 506
    .local v12, "vertical":I
    new-instance v13, Landroid/media/TimedText$Justification;

    invoke-direct {v13, v2, v12}, Landroid/media/TimedText$Justification;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 508
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 509
    .local v6, "object":Landroid/media/TimedText$Justification;
    goto/16 :goto_2

    .line 512
    .end local v2    # "horizontal":I
    .end local v12    # "vertical":I
    .local v6, "object":Ljava/lang/Object;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 513
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 514
    .local v6, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 517
    .local v6, "object":Ljava/lang/Object;
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 518
    .local v10, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 519
    .local v4, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    .local v1, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 521
    .local v7, "right":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v4, v10, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 526
    .end local v1    # "bottom":I
    .end local v4    # "left":I
    .end local v7    # "right":I
    .end local v10    # "top":I
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mScrollDelay:I

    .line 527
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 528
    .local v6, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 533
    .local v6, "object":Ljava/lang/Object;
    :pswitch_e
    const-string v13, "TimedText"

    const-string v14, "KEY_STRUCT_BITMAP"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mBitMapWidth:I

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mBitMapHeight:I

    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mBitMapFd:I

    goto/16 :goto_2

    .line 555
    .end local v3    # "key":I
    .end local v6    # "object":Ljava/lang/Object;
    :cond_a
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 707
    .local v1, "endChar":I
    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, v2, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 709
    .local v0, "blinkingPos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 710
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 712
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 627
    .local v0, "entryCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 629
    .local v3, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 631
    .local v5, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 632
    .local v6, "text":[B
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .line 634
    .local v4, "name":Ljava/lang/String;
    new-instance v1, Landroid/media/TimedText$Font;

    invoke-direct {v1, v3, v4}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .line 636
    .local v1, "font":Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 637
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 639
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 641
    .end local v1    # "font":Landroid/media/TimedText$Font;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nameLen":I
    .end local v6    # "text":[B
    :cond_1
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 648
    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 649
    .local v0, "endChar":I
    new-instance v1, Landroid/media/TimedText$CharPos;

    invoke-direct {v1, v2, v0}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 651
    .local v1, "pos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 652
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 654
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 683
    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 685
    .local v2, "endChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 686
    .local v4, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 687
    .local v6, "url":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 689
    .local v7, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 691
    .local v0, "alt":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 692
    .local v1, "altString":Ljava/lang/String;
    new-instance v3, Landroid/media/TimedText$HyperText;

    invoke-direct {v3, v5, v2, v7, v1}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 695
    .local v3, "hyperText":Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 696
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 698
    :cond_0
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 663
    .local v2, "entryCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 665
    .local v6, "startTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 666
    .local v1, "endTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 667
    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 668
    .local v0, "endChar":I
    new-instance v4, Landroid/media/TimedText$Karaoke;

    invoke-direct {v4, v6, v1, v5, v0}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .line 671
    .local v4, "kara":Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 672
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 674
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 676
    .end local v0    # "endChar":I
    .end local v1    # "endTimeMs":I
    .end local v4    # "kara":Landroid/media/TimedText$Karaoke;
    .end local v5    # "startChar":I
    .end local v6    # "startTimeMs":I
    :cond_1
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 562
    const/4 v9, 0x0

    .line 563
    .local v9, "endOfStyle":Z
    const/4 v1, -0x1

    .line 564
    .local v1, "startChar":I
    const/4 v2, -0x1

    .line 565
    .local v2, "endChar":I
    const/4 v3, -0x1

    .line 566
    .local v3, "fontId":I
    const/4 v4, 0x0

    .line 567
    .local v4, "isBold":Z
    const/4 v5, 0x0

    .line 568
    .local v5, "isItalic":Z
    const/4 v6, 0x0

    .line 569
    .local v6, "isUnderlined":Z
    const/4 v7, -0x1

    .line 570
    .local v7, "fontSize":I
    const/4 v8, -0x1

    .line 571
    .local v8, "colorRGBA":I
    :goto_0
    if-nez v9, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v12

    if-lez v12, :cond_3

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 573
    .local v11, "key":I
    sparse-switch v11, :sswitch_data_0

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 607
    const/4 v9, 0x1

    goto :goto_0

    .line 575
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    goto :goto_0

    .line 579
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 580
    goto :goto_0

    .line 583
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 584
    goto :goto_0

    .line 587
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 590
    .local v10, "flags":I
    rem-int/lit8 v12, v10, 0x2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    const/4 v4, 0x1

    .line 591
    :goto_1
    rem-int/lit8 v12, v10, 0x4

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    const/4 v5, 0x1

    .line 592
    :goto_2
    div-int/lit8 v12, v10, 0x4

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v6, 0x1

    .line 593
    :goto_3
    goto :goto_0

    .line 590
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 591
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 592
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 596
    .end local v10    # "flags":I
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 597
    goto :goto_0

    .line 600
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 601
    goto :goto_0

    .line 613
    .end local v11    # "key":I
    :cond_3
    new-instance v0, Landroid/media/TimedText$Style;

    invoke-direct/range {v0 .. v8}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .line 615
    .local v0, "style":Landroid/media/TimedText$Style;
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v12, :cond_4

    .line 616
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 618
    :cond_4
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    return-void

    .line 573
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
