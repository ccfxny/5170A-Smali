.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 155
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1047
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1069
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 157
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 158
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 159
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 161
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 75
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 97
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 87
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 111
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1047
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1069
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 126
    if-eqz p11, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 129
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 130
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 131
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 132
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 134
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 140
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v1, Landroid/text/Layout$Directions;

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 141
    iget-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 142
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 144
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 146
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 150
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 152
    return-void

    .line 111
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 137
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 55
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 66
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 68
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 12
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 762
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 764
    return-void
.end method

.method private calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I
    .param p4, "widths"    # [F
    .param p5, "widthStart"    # I
    .param p6, "avail"    # F
    .param p7, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "line"    # I
    .param p9, "textWidth"    # F
    .param p10, "paint"    # Landroid/text/TextPaint;
    .param p11, "forceEllipsis"    # Z

    .prologue
    .line 776
    cmpg-float v19, p9, p6

    if-gtz v19, :cond_0

    if-nez p11, :cond_0

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x3

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x4

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 904
    :goto_0
    return-void

    .line 783
    :cond_0
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    sget-object v19, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 788
    .local v6, "ellipsisWidth":F
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v19

    if-nez v19, :cond_1

    .line 789
    sget-object v19, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 792
    :cond_1
    const/4 v5, 0x0

    .line 793
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 794
    .local v4, "ellipsisCount":I
    sub-int v12, p3, p2

    .line 797
    .local v12, "len":I
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 799
    const/16 v17, 0x0

    .line 802
    .local v17, "sum":F
    move v7, v12

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_2

    .line 804
    add-int/lit8 v19, v7, -0x1

    add-int v19, v19, p2

    sub-int v8, v19, p5

    .line 805
    .local v8, "idx":I
    if-gez v8, :cond_5

    .line 818
    .end local v8    # "idx":I
    :cond_2
    const/4 v5, 0x0

    .line 819
    move v4, v7

    .line 902
    .end local v7    # "i":I
    .end local v17    # "sum":F
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x3

    aput v5, v19, v20

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x4

    aput v4, v19, v20

    goto :goto_0

    .line 783
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v12    # "len":I
    :cond_4
    sget-object v19, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 809
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v8    # "idx":I
    .restart local v12    # "len":I
    .restart local v17    # "sum":F
    :cond_5
    aget v18, p4, v8

    .line 811
    .local v18, "w":F
    add-float v19, v18, v17

    add-float v19, v19, v6

    cmpl-float v19, v19, p6

    if-gtz v19, :cond_2

    .line 815
    add-float v17, v17, v18

    .line 802
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 821
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v17    # "sum":F
    .end local v18    # "w":F
    :cond_6
    const-string v19, "StaticLayout"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 822
    const-string v19, "StaticLayout"

    const-string v20, "Start Ellipsis only supported with one line"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 825
    :cond_7
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_8

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_8

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 827
    :cond_8
    const/16 v17, 0x0

    .line 830
    .restart local v17    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v12, :cond_9

    .line 832
    add-int v19, v7, p2

    sub-int v8, v19, p5

    .line 833
    .restart local v8    # "idx":I
    if-gez v8, :cond_a

    .line 845
    .end local v8    # "idx":I
    :cond_9
    move v5, v7

    .line 846
    sub-int v4, v12, v7

    .line 847
    if-eqz p11, :cond_3

    if-nez v4, :cond_3

    if-lez v12, :cond_3

    .line 849
    add-int/lit8 v19, p3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v19

    if-eqz v19, :cond_b

    const/4 v11, 0x2

    .line 850
    .local v11, "legnthOfChar":I
    :goto_5
    sub-int v5, v12, v11

    .line 851
    move v4, v11

    goto/16 :goto_3

    .line 836
    .end local v11    # "legnthOfChar":I
    .restart local v8    # "idx":I
    :cond_a
    aget v18, p4, v8

    .line 838
    .restart local v18    # "w":F
    add-float v19, v18, v17

    add-float v19, v19, v6

    cmpl-float v19, v19, p6

    if-gtz v19, :cond_9

    .line 842
    add-float v17, v17, v18

    .line 830
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 849
    .end local v8    # "idx":I
    .end local v18    # "w":F
    :cond_b
    const/4 v11, 0x1

    goto :goto_5

    .line 855
    .end local v7    # "i":I
    .end local v17    # "sum":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 856
    const/4 v13, 0x0

    .local v13, "lsum":F
    const/16 v16, 0x0

    .line 857
    .local v16, "rsum":F
    const/4 v10, 0x0

    .local v10, "left":I
    move v15, v12

    .line 859
    .local v15, "right":I
    sub-float v19, p6, v6

    const/high16 v20, 0x40000000    # 2.0f

    div-float v14, v19, v20

    .line 860
    .local v14, "ravail":F
    move v15, v12

    :goto_6
    if-lez v15, :cond_d

    .line 862
    add-int/lit8 v19, v15, -0x1

    add-int v19, v19, p2

    sub-int v8, v19, p5

    .line 863
    .restart local v8    # "idx":I
    if-gez v8, :cond_f

    .line 876
    .end local v8    # "idx":I
    :cond_d
    sub-float v19, p6, v6

    sub-float v9, v19, v16

    .line 877
    .local v9, "lavail":F
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v15, :cond_e

    .line 879
    add-int v19, v10, p2

    sub-int v8, v19, p5

    .line 880
    .restart local v8    # "idx":I
    if-gez v8, :cond_10

    .line 893
    .end local v8    # "idx":I
    :cond_e
    move v5, v10

    .line 894
    sub-int v4, v15, v10

    .line 895
    goto/16 :goto_3

    .line 867
    .end local v9    # "lavail":F
    .restart local v8    # "idx":I
    :cond_f
    aget v18, p4, v8

    .line 869
    .restart local v18    # "w":F
    add-float v19, v18, v16

    cmpl-float v19, v19, v14

    if-gtz v19, :cond_d

    .line 873
    add-float v16, v16, v18

    .line 860
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 884
    .end local v18    # "w":F
    .restart local v9    # "lavail":F
    :cond_10
    aget v18, p4, v8

    .line 886
    .restart local v18    # "w":F
    add-float v19, v18, v13

    cmpl-float v19, v19, v9

    if-gtz v19, :cond_e

    .line 890
    add-float v13, v13, v18

    .line 877
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 896
    .end local v8    # "idx":I
    .end local v9    # "lavail":F
    .end local v10    # "left":I
    .end local v13    # "lsum":F
    .end local v14    # "ravail":F
    .end local v15    # "right":I
    .end local v16    # "rsum":F
    .end local v18    # "w":F
    :cond_11
    const-string v19, "StaticLayout"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 897
    const-string v19, "StaticLayout"

    const-string v20, "Middle Ellipsis only supported with one line"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static native nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 619
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 620
    .local v10, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v10, v2

    .line 621
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 622
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v25, v0

    .line 624
    .local v25, "lines":[I
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 625
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/Layout$Directions;

    .line 627
    .local v21, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 629
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 631
    move-object/from16 v0, v21

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 632
    .local v20, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 633
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 634
    move-object/from16 v25, v20

    .line 637
    .end local v20    # "grow":[I
    .end local v21    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 638
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 639
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 640
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 641
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 643
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 644
    aget-object v2, p11, v22

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 645
    aget-object v2, p11, v22

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 643
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 649
    :cond_1
    aget-object v2, p11, v22

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 653
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 654
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 655
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 656
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 659
    .end local v22    # "i":I
    :cond_3
    if-nez v10, :cond_10

    const/16 v19, 0x1

    .line 660
    .local v19, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_11

    const/4 v14, 0x1

    .line 661
    .local v14, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v14, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_12

    :cond_4
    const/16 v23, 0x1

    .line 663
    .local v23, "lastLine":Z
    :goto_4
    if-eqz v19, :cond_6

    .line 664
    if-eqz p21, :cond_5

    .line 665
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 668
    :cond_5
    if-eqz p20, :cond_6

    .line 669
    move/from16 p4, p6

    .line 675
    :cond_6
    if-eqz v23, :cond_8

    .line 676
    if-eqz p21, :cond_7

    .line 677
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 680
    :cond_7
    if-eqz p20, :cond_8

    .line 681
    move/from16 p5, p7

    .line 686
    :cond_8
    if-eqz p15, :cond_14

    if-nez v23, :cond_14

    .line 687
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 688
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_13

    .line 689
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    .line 697
    .end local v16    # "ex":D
    .local v18, "extra":I
    :goto_5
    add-int/lit8 v2, v26, 0x0

    aput p2, v25, v2

    .line 698
    add-int/lit8 v2, v26, 0x1

    aput p8, v25, v2

    .line 699
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v18

    aput v3, v25, v2

    .line 701
    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    .line 702
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v25, v2

    .line 703
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v25, v2

    .line 705
    if-eqz p14, :cond_9

    .line 706
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 708
    :cond_9
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 709
    sget-object v24, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 713
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_15

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v24, v2, v10

    .line 720
    :goto_6
    if-eqz p25, :cond_f

    .line 723
    if-eqz p29, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_16

    const/4 v13, 0x1

    .line 725
    .local v13, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    if-nez p29, :cond_b

    :cond_a
    if-eqz v19, :cond_c

    if-nez p29, :cond_c

    :cond_b
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_e

    :cond_c
    if-nez v19, :cond_17

    if-nez v14, :cond_d

    if-nez p29, :cond_17

    :cond_d
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17

    :cond_e
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_17

    const/4 v15, 0x1

    .line 731
    .local v15, "doEllipsis":Z
    :goto_8
    if-eqz v15, :cond_18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p23

    move/from16 v7, p24

    move/from16 v8, p26

    move-object/from16 v9, p25

    move/from16 v11, p27

    move-object/from16 v12, p28

    .line 733
    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 752
    .end local v13    # "forceEllipsis":Z
    .end local v15    # "doEllipsis":Z
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 753
    return p8

    .line 659
    .end local v14    # "currentLineIsTheLastVisibleOne":Z
    .end local v18    # "extra":I
    .end local v19    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 660
    .restart local v19    # "firstLine":Z
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 661
    .restart local v14    # "currentLineIsTheLastVisibleOne":Z
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 691
    .restart local v16    # "ex":D
    .restart local v23    # "lastLine":Z
    :cond_13
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 694
    .end local v16    # "ex":D
    .end local v18    # "extra":I
    :cond_14
    const/16 v18, 0x0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 716
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v10

    goto/16 :goto_6

    .line 723
    :cond_16
    const/4 v13, 0x0

    goto :goto_7

    .line 725
    .restart local v13    # "forceEllipsis":Z
    :cond_17
    const/4 v15, 0x0

    goto :goto_8

    .line 742
    .restart local v15    # "doEllipsis":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    if-eqz v2, :cond_19

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 745
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x4

    aget v2, v2, v3

    if-eqz v2, :cond_f

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    goto :goto_9
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1015
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 140
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 170
    const/16 v95, 0x0

    .line 171
    .local v95, "breakOpp":[I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v120

    .line 175
    .local v120, "localeLanguageTag":Ljava/lang/String;
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v114

    .line 178
    .local v114, "isProductInternational":Z
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 180
    const/4 v14, 0x0

    .line 181
    .local v14, "v":I
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p7, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, p8, v6

    if-eqz v6, :cond_6

    :cond_0
    const/16 v21, 0x1

    .line 183
    .local v21, "needMultiply":Z
    :goto_0
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_1

    .line 184
    const-wide/16 v6, 0x8

    const-string v15, "Text-generate"

    invoke-static {v6, v7, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 185
    const-string v6, "StaticLayout"

    const-string v7, "[generate] start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v92

    .line 188
    .local v92, "beforeTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    .line 189
    .local v19, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v18, 0x0

    .line 191
    .local v18, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v121, v0

    .line 193
    .local v121, "measured":Landroid/text/MeasuredText;
    const/16 v134, 0x0

    .line 194
    .local v134, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v6, v0, Landroid/text/Spanned;

    if-eqz v6, :cond_2

    move-object/from16 v134, p1

    .line 195
    check-cast v134, Landroid/text/Spanned;

    .line 198
    :cond_2
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_3

    .line 199
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-0-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_3
    move/from16 v30, p2

    .local v30, "paraStart":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, p3

    if-gt v0, v1, :cond_3d

    .line 202
    const/16 v6, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, p3

    invoke-static {v0, v6, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v37

    .line 203
    .local v37, "paraEnd":I
    if-gez v37, :cond_7

    .line 204
    move/from16 v37, p3

    .line 208
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v103, v6, 0x1

    .line 209
    .local v103, "firstWidthLineLimit":I
    move/from16 v102, p5

    .line 210
    .local v102, "firstWidth":I
    move/from16 v129, p5

    .line 212
    .local v129, "restWidth":I
    const/16 v17, 0x0

    .line 214
    .local v17, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v134, :cond_f

    .line 215
    const-class v6, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v134

    move/from16 v1, v30

    move/from16 v2, v37

    invoke-static {v0, v1, v2, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    check-cast v130, [Landroid/text/style/LeadingMarginSpan;

    .line 217
    .local v130, "sp":[Landroid/text/style/LeadingMarginSpan;
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_4

    .line 218
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-1-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_4
    const/16 v112, 0x0

    .local v112, "i":I
    :goto_3
    move-object/from16 v0, v130

    array-length v6, v0

    move/from16 v0, v112

    if-ge v0, v6, :cond_8

    .line 221
    aget-object v117, v130, v112

    .line 222
    .local v117, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v6, v130, v112

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int v102, v102, v6

    .line 223
    aget-object v6, v130, v112

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int v129, v129, v6

    .line 227
    move-object/from16 v0, v117

    instance-of v6, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v6, :cond_5

    move-object/from16 v118, v117

    .line 228
    check-cast v118, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 229
    .local v118, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v134

    move-object/from16 v1, v118

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v119

    .line 230
    .local v119, "lmsFirstLine":I
    invoke-interface/range {v118 .. v118}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v6

    add-int v6, v6, v119

    move/from16 v0, v103

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v103

    .line 220
    .end local v118    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v119    # "lmsFirstLine":I
    :cond_5
    add-int/lit8 v112, v112, 0x1

    goto :goto_3

    .line 181
    .end local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v18    # "chooseHtv":[I
    .end local v19    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v21    # "needMultiply":Z
    .end local v30    # "paraStart":I
    .end local v37    # "paraEnd":I
    .end local v92    # "beforeTime":J
    .end local v102    # "firstWidth":I
    .end local v103    # "firstWidthLineLimit":I
    .end local v112    # "i":I
    .end local v117    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v121    # "measured":Landroid/text/MeasuredText;
    .end local v129    # "restWidth":I
    .end local v130    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v134    # "spanned":Landroid/text/Spanned;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 206
    .restart local v18    # "chooseHtv":[I
    .restart local v19    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v21    # "needMultiply":Z
    .restart local v30    # "paraStart":I
    .restart local v37    # "paraEnd":I
    .restart local v92    # "beforeTime":J
    .restart local v121    # "measured":Landroid/text/MeasuredText;
    .restart local v134    # "spanned":Landroid/text/Spanned;
    :cond_7
    add-int/lit8 v37, v37, 0x1

    goto :goto_2

    .line 234
    .restart local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v102    # "firstWidth":I
    .restart local v103    # "firstWidthLineLimit":I
    .restart local v112    # "i":I
    .restart local v129    # "restWidth":I
    .restart local v130    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_9

    .line 235
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-1-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_9
    const-class v6, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v134

    move/from16 v1, v30

    move/from16 v2, v37

    invoke-static {v0, v1, v2, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v17, [Landroid/text/style/LineHeightSpan;

    .line 240
    .restart local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v17

    array-length v6, v0

    if-eqz v6, :cond_f

    .line 241
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v17

    array-length v7, v0

    if-ge v6, v7, :cond_b

    .line 243
    :cond_a
    move-object/from16 v0, v17

    array-length v6, v0

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v18

    .line 245
    :cond_b
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_c

    .line 246
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-2-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_c
    const/16 v112, 0x0

    :goto_4
    move-object/from16 v0, v17

    array-length v6, v0

    move/from16 v0, v112

    if-ge v0, v6, :cond_e

    .line 249
    aget-object v6, v17, v112

    move-object/from16 v0, v134

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v122

    .line 251
    .local v122, "o":I
    move/from16 v0, v122

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    .line 255
    move-object/from16 v0, p0

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v6

    aput v6, v18, v112

    .line 248
    :goto_5
    add-int/lit8 v112, v112, 0x1

    goto :goto_4

    .line 259
    :cond_d
    aput v14, v18, v112

    goto :goto_5

    .line 262
    .end local v122    # "o":I
    :cond_e
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_f

    .line 263
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-2-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v112    # "i":I
    .end local v130    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_f
    move-object/from16 v0, v121

    move-object/from16 v1, p1

    move/from16 v2, v30

    move/from16 v3, v37

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 269
    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v28, v0

    .line 270
    .local v28, "chs":[C
    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v29, v0

    .line 271
    .local v29, "widths":[F
    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v22, v0

    .line 272
    .local v22, "chdirs":[B
    move-object/from16 v0, v121

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v23, v0

    .line 273
    .local v23, "dir":I
    move-object/from16 v0, v121

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v24, v0

    .line 275
    .local v24, "easy":Z
    sub-int v6, v37, v30

    move-object/from16 v0, v120

    move-object/from16 v1, v28

    move-object/from16 v2, v95

    invoke-static {v0, v1, v6, v2}, Landroid/text/StaticLayout;->nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I

    move-result-object v95

    .line 276
    const/16 v96, 0x0

    .line 278
    .local v96, "breakOppIndex":I
    move/from16 v139, v102

    .line 280
    .local v139, "width":I
    const/16 v61, 0x0

    .line 282
    .local v61, "w":F
    move/from16 v8, v30

    .line 286
    .local v8, "here":I
    move/from16 v123, v30

    .line 287
    .local v123, "ok":I
    move/from16 v128, v61

    .line 288
    .local v128, "okWidth":F
    const/16 v124, 0x0

    .local v124, "okAscent":I
    const/16 v126, 0x0

    .local v126, "okDescent":I
    const/16 v127, 0x0

    .local v127, "okTop":I
    const/16 v125, 0x0

    .line 292
    .local v125, "okBottom":I
    move/from16 v104, v30

    .line 293
    .local v104, "fit":I
    move/from16 v105, v61

    .line 294
    .local v105, "fitWidth":F
    const/16 v38, 0x0

    .local v38, "fitAscent":I
    const/16 v39, 0x0

    .local v39, "fitDescent":I
    const/16 v40, 0x0

    .local v40, "fitTop":I
    const/16 v41, 0x0

    .line 296
    .local v41, "fitBottom":I
    move/from16 v106, v61

    .line 298
    .local v106, "fitWidthGraphing":F
    const/16 v20, 0x0

    .line 299
    .local v20, "hasTabOrEmoji":Z
    const/16 v111, 0x0

    .line 300
    .local v111, "hasTab":Z
    const/16 v136, 0x0

    .line 301
    .local v136, "tabStops":Landroid/text/Layout$TabStops;
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_10

    .line 302
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-3-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_10
    move/from16 v133, v30

    .local v133, "spanStart":I
    :goto_6
    move/from16 v0, v133

    move/from16 v1, v37

    if-ge v0, v1, :cond_39

    .line 306
    if-nez v134, :cond_16

    .line 307
    move/from16 v131, v37

    .line 308
    .local v131, "spanEnd":I
    sub-int v132, v131, v133

    .line 309
    .local v132, "spanLen":I
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_11

    .line 310
    const-string v6, "StaticLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[generate] addStyleRun-nospan-start "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v132

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_11
    move-object/from16 v0, v121

    move-object/from16 v1, p4

    move/from16 v2, v132

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 313
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_12

    .line 314
    const-string v6, "StaticLayout"

    const-string v7, "[generate] addStyleRun-nospan-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_12
    :goto_7
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v110, v0

    .line 333
    .local v110, "fmTop":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v108, v0

    .line 334
    .local v108, "fmBottom":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v107, v0

    .line 335
    .local v107, "fmAscent":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v109, v0

    .line 336
    .local v109, "fmDescent":I
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_13

    .line 337
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-4-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_13
    move/from16 v116, v133

    .local v116, "j":I
    :goto_8
    move/from16 v0, v116

    move/from16 v1, v131

    if-ge v0, v1, :cond_14

    .line 343
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v6, v7, :cond_18

    .line 538
    :cond_14
    :goto_9
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_15

    .line 539
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-4-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_15
    move/from16 v133, v131

    goto/16 :goto_6

    .line 317
    .end local v107    # "fmAscent":I
    .end local v108    # "fmBottom":I
    .end local v109    # "fmDescent":I
    .end local v110    # "fmTop":I
    .end local v116    # "j":I
    .end local v131    # "spanEnd":I
    .end local v132    # "spanLen":I
    :cond_16
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v134

    move/from16 v1, v133

    move/from16 v2, v37

    invoke-interface {v0, v1, v2, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v131

    .line 319
    .restart local v131    # "spanEnd":I
    sub-int v132, v131, v133

    .line 320
    .restart local v132    # "spanLen":I
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v134

    move/from16 v1, v133

    move/from16 v2, v131

    invoke-interface {v0, v1, v2, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v135

    check-cast v135, [Landroid/text/style/MetricAffectingSpan;

    .line 322
    .local v135, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v135

    move-object/from16 v1, v134

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v135

    .end local v135    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v135, [Landroid/text/style/MetricAffectingSpan;

    .line 323
    .restart local v135    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_17

    .line 324
    const-string v6, "StaticLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[generate] addStyleRun-span-start "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v132

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_17
    move-object/from16 v0, v121

    move-object/from16 v1, p4

    move-object/from16 v2, v135

    move/from16 v3, v132

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 327
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_12

    .line 328
    const-string v6, "StaticLayout"

    const-string v7, "[generate] addStyleRun-span-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 348
    .end local v135    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v107    # "fmAscent":I
    .restart local v108    # "fmBottom":I
    .restart local v109    # "fmDescent":I
    .restart local v110    # "fmTop":I
    .restart local v116    # "j":I
    :cond_18
    sub-int v6, v116, v30

    aget-char v97, v28, v6

    .line 350
    .local v97, "c":C
    const/16 v6, 0xa

    move/from16 v0, v97

    if-ne v0, v6, :cond_20

    .line 401
    :goto_a
    const/16 v6, 0x20

    move/from16 v0, v97

    if-eq v0, v6, :cond_19

    const/16 v6, 0x9

    move/from16 v0, v97

    if-eq v0, v6, :cond_19

    const/16 v6, 0x200b

    move/from16 v0, v97

    if-ne v0, v6, :cond_28

    :cond_19
    const/16 v115, 0x1

    .line 409
    .local v115, "isSpaceOrTab":Z
    :goto_b
    move/from16 v0, v139

    int-to-float v6, v0

    cmpg-float v6, v61, v6

    if-lez v6, :cond_1a

    if-eqz v115, :cond_30

    if-eqz v114, :cond_30

    .line 412
    :cond_1a
    move/from16 v105, v61

    .line 413
    if-nez v115, :cond_1b

    .line 414
    move/from16 v106, v61

    .line 416
    :cond_1b
    add-int/lit8 v104, v116, 0x1

    .line 418
    move/from16 v0, v110

    move/from16 v1, v40

    if-ge v0, v1, :cond_1c

    .line 419
    move/from16 v40, v110

    .line 420
    :cond_1c
    move/from16 v0, v107

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d

    .line 421
    move/from16 v38, v107

    .line 422
    :cond_1d
    move/from16 v0, v109

    move/from16 v1, v39

    if-le v0, v1, :cond_1e

    .line 423
    move/from16 v39, v109

    .line 424
    :cond_1e
    move/from16 v0, v108

    move/from16 v1, v41

    if-le v0, v1, :cond_1f

    .line 425
    move/from16 v41, v108

    .line 428
    :cond_1f
    :goto_c
    aget v6, v95, v96

    const/4 v7, -0x1

    if-eq v6, v7, :cond_29

    aget v6, v95, v96

    sub-int v7, v116, v30

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_29

    .line 429
    add-int/lit8 v96, v96, 0x1

    goto :goto_c

    .line 352
    .end local v115    # "isSpaceOrTab":Z
    :cond_20
    const/16 v6, 0x9

    move/from16 v0, v97

    if-ne v0, v6, :cond_23

    .line 353
    if-nez v111, :cond_21

    .line 354
    const/16 v111, 0x1

    .line 355
    const/16 v20, 0x1

    .line 356
    if-eqz v134, :cond_21

    .line 358
    const-class v6, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v134

    move/from16 v1, v30

    move/from16 v2, v37

    invoke-static {v0, v1, v2, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v135

    check-cast v135, [Landroid/text/style/TabStopSpan;

    .line 360
    .local v135, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v135

    array-length v6, v0

    if-lez v6, :cond_21

    .line 361
    new-instance v136, Landroid/text/Layout$TabStops;

    .end local v136    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v6, 0x14

    move-object/from16 v0, v136

    move-object/from16 v1, v135

    invoke-direct {v0, v6, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 365
    .end local v135    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v136    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_21
    if-eqz v136, :cond_22

    .line 366
    move-object/from16 v0, v136

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v61

    goto/16 :goto_a

    .line 368
    :cond_22
    const/16 v6, 0x14

    move/from16 v0, v61

    invoke-static {v0, v6}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v61

    goto/16 :goto_a

    .line 370
    :cond_23
    const v6, 0xd800

    move/from16 v0, v97

    if-lt v0, v6, :cond_27

    const v6, 0xdfff

    move/from16 v0, v97

    if-gt v0, v6, :cond_27

    add-int/lit8 v6, v116, 0x1

    move/from16 v0, v131

    if-ge v6, v0, :cond_27

    .line 372
    sub-int v6, v116, v30

    move-object/from16 v0, v28

    invoke-static {v0, v6}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v100

    .line 374
    .local v100, "emoji":I
    sget v6, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v100

    if-lt v0, v6, :cond_26

    sget v6, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v100

    if-gt v0, v6, :cond_26

    .line 375
    sget-object v6, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v100

    invoke-virtual {v6, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v94

    .line 377
    .local v94, "bm":Landroid/graphics/Bitmap;
    if-eqz v94, :cond_25

    .line 380
    if-nez v134, :cond_24

    .line 381
    move-object/from16 v137, p4

    .line 386
    .local v137, "whichPaint":Landroid/graphics/Paint;
    :goto_d
    invoke-virtual/range {v94 .. v94}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v137 .. v137}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual/range {v94 .. v94}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v138, v6, v7

    .line 388
    .local v138, "wid":F
    add-float v61, v61, v138

    .line 389
    const/16 v20, 0x1

    .line 390
    add-int/lit8 v116, v116, 0x1

    .line 391
    goto/16 :goto_a

    .line 383
    .end local v137    # "whichPaint":Landroid/graphics/Paint;
    .end local v138    # "wid":F
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v137, v0

    .restart local v137    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_d

    .line 392
    .end local v137    # "whichPaint":Landroid/graphics/Paint;
    :cond_25
    sub-int v6, v116, v30

    aget v6, v29, v6

    add-float v61, v61, v6

    goto/16 :goto_a

    .line 395
    .end local v94    # "bm":Landroid/graphics/Bitmap;
    :cond_26
    sub-int v6, v116, v30

    aget v6, v29, v6

    add-float v61, v61, v6

    goto/16 :goto_a

    .line 398
    .end local v100    # "emoji":I
    :cond_27
    sub-int v6, v116, v30

    aget v6, v29, v6

    add-float v61, v61, v6

    goto/16 :goto_a

    .line 401
    :cond_28
    const/16 v115, 0x0

    goto/16 :goto_b

    .line 434
    .restart local v115    # "isSpaceOrTab":Z
    :cond_29
    const/16 v113, 0x0

    .line 435
    .local v113, "isLineBreak":Z
    if-eqz v114, :cond_2f

    .line 436
    move-object/from16 v0, v95

    array-length v6, v0

    move/from16 v0, v96

    if-ge v0, v6, :cond_2e

    aget v6, v95, v96

    sub-int v7, v116, v30

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_2e

    const/16 v113, 0x1

    .line 443
    :goto_e
    if-eqz v113, :cond_2d

    .line 444
    move/from16 v128, v106

    .line 445
    add-int/lit8 v123, v116, 0x1

    .line 447
    move/from16 v0, v40

    move/from16 v1, v127

    if-ge v0, v1, :cond_2a

    .line 448
    move/from16 v127, v40

    .line 449
    :cond_2a
    move/from16 v0, v38

    move/from16 v1, v124

    if-ge v0, v1, :cond_2b

    .line 450
    move/from16 v124, v38

    .line 451
    :cond_2b
    move/from16 v0, v39

    move/from16 v1, v126

    if-le v0, v1, :cond_2c

    .line 452
    move/from16 v126, v39

    .line 453
    :cond_2c
    move/from16 v0, v41

    move/from16 v1, v125

    if-le v0, v1, :cond_2d

    .line 454
    move/from16 v125, v41

    .line 339
    .end local v113    # "isLineBreak":Z
    :cond_2d
    add-int/lit8 v116, v116, 0x1

    goto/16 :goto_8

    .line 436
    .restart local v113    # "isLineBreak":Z
    :cond_2e
    const/16 v113, 0x0

    goto :goto_e

    .line 439
    :cond_2f
    sub-int v6, v116, v30

    sub-int v7, v8, v30

    sub-int v15, v131, v30

    const/16 v16, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-static {v0, v6, v7, v15, v1}, Landroid/text/MzTextUtils;->isLineBreak([CIIIZ)Z

    move-result v113

    goto :goto_e

    .line 463
    .end local v113    # "isLineBreak":Z
    :cond_30
    if-eqz v115, :cond_31

    if-nez v114, :cond_31

    .line 464
    move/from16 v128, v105

    .line 465
    add-int/lit8 v123, v116, 0x1

    .line 466
    move/from16 v127, v40

    .line 467
    move/from16 v124, v38

    .line 468
    move/from16 v126, v39

    .line 469
    move/from16 v125, v41

    .line 473
    :cond_31
    move/from16 v0, v123

    if-eq v0, v8, :cond_34

    .line 474
    move/from16 v101, v123

    .line 475
    .local v101, "endPos":I
    move/from16 v10, v124

    .line 476
    .local v10, "above":I
    move/from16 v11, v126

    .line 477
    .local v11, "below":I
    move/from16 v12, v127

    .line 478
    .local v12, "top":I
    move/from16 v13, v125

    .line 479
    .local v13, "bottom":I
    move/from16 v33, v128

    .line 502
    .local v33, "currentTextWidth":F
    :goto_f
    move/from16 v9, v101

    .line 503
    .local v9, "ellipseEnd":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_32

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p12

    if-ne v0, v6, :cond_32

    .line 504
    move/from16 v9, v37

    .line 506
    :cond_32
    const/16 v35, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v25, p3

    move/from16 v26, p9

    move/from16 v27, p10

    move-object/from16 v31, p12

    move/from16 v32, p11

    move-object/from16 v34, p4

    invoke-direct/range {v6 .. v35}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v14

    .line 513
    move/from16 v8, v101

    .line 514
    add-int/lit8 v116, v8, -0x1

    .line 515
    move/from16 v104, v8

    move/from16 v123, v8

    .line 516
    const/16 v61, 0x0

    .line 517
    move/from16 v106, v61

    .line 518
    const/16 v41, 0x0

    move/from16 v40, v41

    move/from16 v39, v41

    move/from16 v38, v41

    .line 519
    const/16 v125, 0x0

    move/from16 v127, v125

    move/from16 v126, v125

    move/from16 v124, v125

    .line 521
    add-int/lit8 v103, v103, -0x1

    if-gtz v103, :cond_33

    .line 522
    move/from16 v139, v129

    .line 525
    :cond_33
    move/from16 v0, v133

    if-ge v8, v0, :cond_37

    .line 528
    move-object/from16 v0, v121

    invoke-virtual {v0, v8}, Landroid/text/MeasuredText;->setPos(I)V

    .line 529
    move/from16 v131, v8

    .line 530
    goto/16 :goto_9

    .line 480
    .end local v9    # "ellipseEnd":I
    .end local v10    # "above":I
    .end local v11    # "below":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v33    # "currentTextWidth":F
    .end local v101    # "endPos":I
    :cond_34
    move/from16 v0, v104

    if-eq v0, v8, :cond_35

    .line 481
    move/from16 v101, v104

    .line 482
    .restart local v101    # "endPos":I
    move/from16 v10, v38

    .line 483
    .restart local v10    # "above":I
    move/from16 v11, v39

    .line 484
    .restart local v11    # "below":I
    move/from16 v12, v40

    .line 485
    .restart local v12    # "top":I
    move/from16 v13, v41

    .line 486
    .restart local v13    # "bottom":I
    move/from16 v33, v105

    .restart local v33    # "currentTextWidth":F
    goto :goto_f

    .line 489
    .end local v10    # "above":I
    .end local v11    # "below":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v33    # "currentTextWidth":F
    .end local v101    # "endPos":I
    :cond_35
    add-int/lit8 v101, v8, 0x1

    .line 492
    .restart local v101    # "endPos":I
    :goto_10
    move/from16 v0, v101

    move/from16 v1, v131

    if-ge v0, v1, :cond_36

    sub-int v6, v101, v30

    aget v6, v29, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_36

    .line 493
    add-int/lit8 v101, v101, 0x1

    goto :goto_10

    .line 495
    :cond_36
    move/from16 v10, v107

    .line 496
    .restart local v10    # "above":I
    move/from16 v11, v109

    .line 497
    .restart local v11    # "below":I
    move/from16 v12, v110

    .line 498
    .restart local v12    # "top":I
    move/from16 v13, v108

    .line 499
    .restart local v13    # "bottom":I
    sub-int v6, v8, v30

    aget v33, v29, v6

    .restart local v33    # "currentTextWidth":F
    goto/16 :goto_f

    .line 533
    .restart local v9    # "ellipseEnd":I
    :cond_37
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v6, v7, :cond_2d

    .line 606
    .end local v8    # "here":I
    .end local v9    # "ellipseEnd":I
    .end local v10    # "above":I
    .end local v11    # "below":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v20    # "hasTabOrEmoji":Z
    .end local v22    # "chdirs":[B
    .end local v23    # "dir":I
    .end local v24    # "easy":Z
    .end local v28    # "chs":[C
    .end local v29    # "widths":[F
    .end local v33    # "currentTextWidth":F
    .end local v37    # "paraEnd":I
    .end local v38    # "fitAscent":I
    .end local v39    # "fitDescent":I
    .end local v40    # "fitTop":I
    .end local v41    # "fitBottom":I
    .end local v61    # "w":F
    .end local v96    # "breakOppIndex":I
    .end local v97    # "c":C
    .end local v101    # "endPos":I
    .end local v102    # "firstWidth":I
    .end local v103    # "firstWidthLineLimit":I
    .end local v104    # "fit":I
    .end local v105    # "fitWidth":F
    .end local v106    # "fitWidthGraphing":F
    .end local v107    # "fmAscent":I
    .end local v108    # "fmBottom":I
    .end local v109    # "fmDescent":I
    .end local v110    # "fmTop":I
    .end local v111    # "hasTab":Z
    .end local v115    # "isSpaceOrTab":Z
    .end local v116    # "j":I
    .end local v123    # "ok":I
    .end local v124    # "okAscent":I
    .end local v125    # "okBottom":I
    .end local v126    # "okDescent":I
    .end local v127    # "okTop":I
    .end local v128    # "okWidth":F
    .end local v129    # "restWidth":I
    .end local v131    # "spanEnd":I
    .end local v132    # "spanLen":I
    .end local v133    # "spanStart":I
    .end local v136    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v139    # "width":I
    :cond_38
    :goto_11
    return-void

    .line 542
    .restart local v8    # "here":I
    .restart local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v20    # "hasTabOrEmoji":Z
    .restart local v22    # "chdirs":[B
    .restart local v23    # "dir":I
    .restart local v24    # "easy":Z
    .restart local v28    # "chs":[C
    .restart local v29    # "widths":[F
    .restart local v37    # "paraEnd":I
    .restart local v38    # "fitAscent":I
    .restart local v39    # "fitDescent":I
    .restart local v40    # "fitTop":I
    .restart local v41    # "fitBottom":I
    .restart local v61    # "w":F
    .restart local v96    # "breakOppIndex":I
    .restart local v102    # "firstWidth":I
    .restart local v103    # "firstWidthLineLimit":I
    .restart local v104    # "fit":I
    .restart local v105    # "fitWidth":F
    .restart local v106    # "fitWidthGraphing":F
    .restart local v111    # "hasTab":Z
    .restart local v123    # "ok":I
    .restart local v124    # "okAscent":I
    .restart local v125    # "okBottom":I
    .restart local v126    # "okDescent":I
    .restart local v127    # "okTop":I
    .restart local v128    # "okWidth":F
    .restart local v129    # "restWidth":I
    .restart local v133    # "spanStart":I
    .restart local v136    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v139    # "width":I
    :cond_39
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_3a

    .line 543
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-3-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_3a
    move/from16 v0, v37

    if-eq v0, v8, :cond_3c

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v6, v7, :cond_3c

    .line 547
    or-int v6, v40, v41

    or-int v6, v6, v39

    or-int v6, v6, v38

    if-nez v6, :cond_3b

    .line 549
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 551
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v40, v0

    .line 552
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v41, v0

    .line 553
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v38, v0

    .line 554
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v39, v0

    .line 559
    :cond_3b
    move/from16 v0, v37

    move/from16 v1, p3

    if-eq v0, v1, :cond_42

    const/16 v63, 0x1

    :goto_12
    move-object/from16 v34, p0

    move-object/from16 v35, p1

    move/from16 v36, v8

    move/from16 v42, v14

    move/from16 v43, p7

    move/from16 v44, p8

    move-object/from16 v45, v17

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    move/from16 v48, v20

    move/from16 v49, v21

    move-object/from16 v50, v22

    move/from16 v51, v23

    move/from16 v52, v24

    move/from16 v53, p3

    move/from16 v54, p9

    move/from16 v55, p10

    move-object/from16 v56, v28

    move-object/from16 v57, v29

    move/from16 v58, v30

    move-object/from16 v59, p12

    move/from16 v60, p11

    move-object/from16 v62, p4

    invoke-direct/range {v34 .. v63}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v14

    .line 571
    :cond_3c
    move/from16 v30, v37

    .line 573
    move/from16 v0, v37

    move/from16 v1, p3

    if-eq v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v6, v7, :cond_43

    .line 576
    .end local v8    # "here":I
    .end local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v20    # "hasTabOrEmoji":Z
    .end local v22    # "chdirs":[B
    .end local v23    # "dir":I
    .end local v24    # "easy":Z
    .end local v28    # "chs":[C
    .end local v29    # "widths":[F
    .end local v37    # "paraEnd":I
    .end local v38    # "fitAscent":I
    .end local v39    # "fitDescent":I
    .end local v40    # "fitTop":I
    .end local v41    # "fitBottom":I
    .end local v61    # "w":F
    .end local v96    # "breakOppIndex":I
    .end local v102    # "firstWidth":I
    .end local v103    # "firstWidthLineLimit":I
    .end local v104    # "fit":I
    .end local v105    # "fitWidth":F
    .end local v106    # "fitWidthGraphing":F
    .end local v111    # "hasTab":Z
    .end local v123    # "ok":I
    .end local v124    # "okAscent":I
    .end local v125    # "okBottom":I
    .end local v126    # "okDescent":I
    .end local v127    # "okTop":I
    .end local v128    # "okWidth":F
    .end local v129    # "restWidth":I
    .end local v133    # "spanStart":I
    .end local v136    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v139    # "width":I
    :cond_3d
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_3e

    .line 577
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-0-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_3e
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_3f

    add-int/lit8 v6, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_40

    :cond_3f
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v6, v7, :cond_40

    .line 585
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 587
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v66, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v67, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v68, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v69, v0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v78, v0

    move-object/from16 v0, v121

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v79, v0

    move-object/from16 v0, v121

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v80, v0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v89, 0x0

    const/16 v91, 0x0

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move/from16 v64, p3

    move/from16 v65, p3

    move/from16 v70, v14

    move/from16 v71, p7

    move/from16 v72, p8

    move-object/from16 v75, v19

    move/from16 v77, v21

    move/from16 v81, p3

    move/from16 v82, p9

    move/from16 v83, p10

    move/from16 v86, p2

    move-object/from16 v87, p12

    move/from16 v88, p11

    move-object/from16 v90, p4

    invoke-direct/range {v62 .. v91}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v14

    .line 598
    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v98, v6, v92

    .line 599
    .local v98, "diffTime":J
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_38

    .line 600
    const-wide/16 v6, 0x0

    cmp-long v6, v98, v6

    if-lez v6, :cond_41

    .line 601
    const-string v6, "StaticLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[generate] diff "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v98 .. v99}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_41
    const-string v6, "StaticLayout"

    const-string v7, "[generate] end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_11

    .line 559
    .end local v98    # "diffTime":J
    .restart local v8    # "here":I
    .restart local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v20    # "hasTabOrEmoji":Z
    .restart local v22    # "chdirs":[B
    .restart local v23    # "dir":I
    .restart local v24    # "easy":Z
    .restart local v28    # "chs":[C
    .restart local v29    # "widths":[F
    .restart local v37    # "paraEnd":I
    .restart local v38    # "fitAscent":I
    .restart local v39    # "fitDescent":I
    .restart local v40    # "fitTop":I
    .restart local v41    # "fitBottom":I
    .restart local v61    # "w":F
    .restart local v96    # "breakOppIndex":I
    .restart local v102    # "firstWidth":I
    .restart local v103    # "firstWidthLineLimit":I
    .restart local v104    # "fit":I
    .restart local v105    # "fitWidth":F
    .restart local v106    # "fitWidthGraphing":F
    .restart local v111    # "hasTab":Z
    .restart local v123    # "ok":I
    .restart local v124    # "okAscent":I
    .restart local v125    # "okBottom":I
    .restart local v126    # "okDescent":I
    .restart local v127    # "okTop":I
    .restart local v128    # "okWidth":F
    .restart local v129    # "restWidth":I
    .restart local v133    # "spanStart":I
    .restart local v136    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v139    # "width":I
    :cond_42
    const/16 v63, 0x0

    goto/16 :goto_12

    .line 201
    :cond_43
    move/from16 v30, v37

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 988
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 989
    const/4 v0, 0x0

    .line 992
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 997
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1001
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 968
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 948
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 949
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 951
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 953
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 973
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 912
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 913
    .local v1, "high":I
    const/4 v3, -0x1

    .line 915
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 916
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 917
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 918
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 919
    move v1, v0

    goto :goto_0

    .line 921
    :cond_0
    move v3, v0

    goto :goto_0

    .line 924
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 925
    const/4 v3, 0x0

    .line 927
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 958
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 938
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 939
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 963
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public isSingleLineRtoL()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1023
    invoke-virtual {p0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    aget v2, v2, v0

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1010
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1011
    return-void
.end method
