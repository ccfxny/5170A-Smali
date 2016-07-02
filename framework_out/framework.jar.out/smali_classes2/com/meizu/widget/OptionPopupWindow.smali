.class public Lcom/meizu/widget/OptionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "OptionPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/OptionPopupWindow$PageInfo;,
        Lcom/meizu/widget/OptionPopupWindow$OptionMenu;,
        Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;,
        Lcom/meizu/widget/OptionPopupWindow$HandleView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_EMPTY:I = 0x0

.field private static final STATE_MAX:I = 0x2

.field private static final STATE_PRESSED:I = 0x1

.field private static final STATE_SETS:[[I

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "\u2025"

.field private static final TAG:Ljava/lang/String; = "OptionPopupWindow"

.field private static sTmpBitmaps:[Landroid/graphics/Bitmap;


# instance fields
.field private mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

.field private mContext:Landroid/content/Context;

.field private mCurPageNum:I

.field private mDisableAlignBottom:Z

.field private mGravity:I

.field private mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

.field private mLocationInWindow:[I

.field private mOptionPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/OptionPopupWindow$OptionMenu;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/View;

.field private mRectF:Landroid/graphics/RectF;

.field private mWndRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [[I

    sput-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    .line 55
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    new-array v1, v4, [I

    const v2, 0x10100a9

    aput v2, v1, v3

    aput-object v1, v0, v3

    .line 58
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    aput-object v1, v0, v4

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 65
    iput v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    .line 67
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;

    .line 81
    iput v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    .line 86
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0, v3}, Lcom/meizu/widget/OptionPopupWindow;->setTouchable(Z)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/meizu/widget/OptionPopupWindow;->setOutsideTouchable(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/meizu/widget/OptionPopupWindow;->setClippingEnabled(Z)V

    .line 90
    invoke-virtual {p0, v2, v2}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutMode(II)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/meizu/widget/OptionPopupWindow;->setInputMethodMode(I)V

    .line 92
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutType(I)V

    .line 93
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/meizu/widget/OptionPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/OptionPopupWindow$HandleView;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    .line 96
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/OptionPopupWindow;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0, p0}, Lcom/meizu/widget/OptionPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/widget/OptionPopupWindow;Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow;
    .param p1, "x1"    # Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/widget/OptionPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow;

    .prologue
    .line 42
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    return v0
.end method

.method static synthetic access$208(Lcom/meizu/widget/OptionPopupWindow;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow;

    .prologue
    .line 42
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    return v0
.end method

.method static synthetic access$210(Lcom/meizu/widget/OptionPopupWindow;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow;

    .prologue
    .line 42
    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(III)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/meizu/widget/OptionPopupWindow;->getBitmaps(III)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()[[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/OptionPopupWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/OptionPopupWindow;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getBitmaps(III)[Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "count"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1013
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 1014
    new-array v2, p0, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    .line 1020
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p0, :cond_5

    .line 1021
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v2, v1

    .line 1022
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, p2, :cond_3

    .line 1023
    :cond_1
    if-eqz v0, :cond_2

    .line 1024
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1025
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1027
    :cond_3
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v2, v1

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1016
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    :cond_4
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v2, p0, :cond_0

    .line 1017
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1029
    .restart local v1    # "i":I
    :cond_5
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    return-object v2
.end method


# virtual methods
.method public disableAlignBottom(Z)V
    .locals 0
    .param p1, "disableAlignBottom"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    .line 118
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    .line 1058
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput-boolean p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickable:Z

    .line 242
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    .line 233
    return-void
.end method

.method public setItemMaxWidth(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    .line 260
    return-void
.end method

.method public setItemMinWidth(I)V
    .locals 1
    .param p1, "min"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    .line 251
    return-void
.end method

.method public showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z
    .locals 16
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "selRect"    # Landroid/graphics/RectF;

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    if-nez v13, :cond_1

    .line 122
    :cond_0
    const/4 v13, 0x0

    .line 218
    :goto_0
    return v13

    .line 125
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    if-nez v13, :cond_2

    .line 126
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    .line 128
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    .line 129
    .local v12, "wndRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 131
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 132
    .local v9, "screenHeight":I
    iget v13, v12, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_3

    const/4 v13, 0x0

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 133
    :cond_3
    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    if-le v13, v9, :cond_4

    iput v9, v12, Landroid/graphics/Rect;->bottom:I

    .line 134
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    invoke-virtual {v13, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 135
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mRectF:Landroid/graphics/RectF;

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 137
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    iget v14, v12, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 138
    iget v13, v12, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/RectF;->top:F

    .line 140
    :cond_5
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 141
    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/RectF;->bottom:F

    .line 144
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->onMeasure(II)V

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v13}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getContentWidth()I

    move-result v11

    .line 146
    .local v11, "width":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v13}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMeasuredHeight()I

    move-result v6

    .line 148
    .local v6, "height":I
    const/4 v5, 0x0

    .line 149
    .local v5, "gravity":I
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 150
    .local v8, "nearestDis":F
    iget v13, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_7

    .line 151
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    shr-int/lit8 v15, v6, 0x1

    int-to-float v15, v15

    sub-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 152
    const/16 v5, 0x30

    .line 154
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    if-nez v13, :cond_8

    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v6

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_8

    .line 155
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    shr-int/lit8 v15, v6, 0x1

    int-to-float v15, v15

    add-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 156
    .local v3, "dis":F
    cmpg-float v13, v3, v8

    if-gez v13, :cond_8

    .line 157
    move v8, v3

    .line 158
    const/16 v5, 0x50

    .line 161
    .end local v3    # "dis":F
    :cond_8
    if-nez v5, :cond_9

    .line 162
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    iget v14, v12, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_e

    .line 163
    const/16 v5, 0x30

    .line 168
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    if-eqz v13, :cond_a

    .line 169
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    .line 171
    :cond_a
    const/4 v10, 0x0

    .line 172
    .local v10, "top":F
    const/16 v13, 0x30

    if-ne v5, v13, :cond_f

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 174
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    int-to-float v14, v6

    sub-float v10, v13, v14

    .line 182
    :goto_2
    iget v13, v12, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    cmpg-float v13, v10, v13

    if-gez v13, :cond_b

    .line 183
    iget v13, v12, Landroid/graphics/Rect;->top:I

    int-to-float v10, v13

    .line 186
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    float-to-int v2, v13

    .line 187
    .local v2, "arrowpos":I
    const/4 v7, 0x0

    .line 188
    .local v7, "left":I
    const/4 v1, 0x0

    .line 189
    .local v1, "arrowOffsetX":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    if-gt v2, v13, :cond_12

    .line 190
    div-int/lit8 v13, v11, 0x2

    if-ge v2, v13, :cond_11

    .line 191
    move v1, v2

    .line 202
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v13, v1, v11}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowOffsetX(II)I

    move-result v1

    .line 203
    sub-int v13, v2, v1

    add-int/2addr v7, v13

    .line 205
    if-gez v7, :cond_c

    const/4 v7, 0x0

    .line 206
    :cond_c
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v13, v11

    if-le v7, v13, :cond_d

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int v7, v13, v11

    .line 210
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 211
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutMode(II)V

    .line 212
    float-to-int v13, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13, v11, v6}, Lcom/meizu/widget/OptionPopupWindow;->update(IIII)V

    .line 218
    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 164
    .end local v1    # "arrowOffsetX":I
    .end local v2    # "arrowpos":I
    .end local v7    # "left":I
    .end local v10    # "top":F
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    if-nez v13, :cond_9

    .line 165
    const/16 v5, 0x50

    goto :goto_1

    .line 175
    .restart local v10    # "top":F
    :cond_f
    const/16 v13, 0x50

    if-ne v5, v13, :cond_10

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 177
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 179
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    .line 180
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    int-to-float v14, v6

    sub-float v10, v13, v14

    goto :goto_2

    .line 193
    .restart local v1    # "arrowOffsetX":I
    .restart local v2    # "arrowpos":I
    .restart local v7    # "left":I
    :cond_11
    div-int/lit8 v1, v11, 0x2

    goto :goto_3

    .line 196
    :cond_12
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v13, v2

    div-int/lit8 v14, v11, 0x2

    if-ge v13, v14, :cond_13

    .line 197
    div-int/lit8 v13, v11, 0x2

    div-int/lit8 v14, v11, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v14, v2

    sub-int v1, v13, v14

    goto :goto_3

    .line 199
    :cond_13
    div-int/lit8 v1, v11, 0x2

    goto :goto_3

    .line 214
    :cond_14
    const/4 v13, -0x2

    const/4 v14, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutMode(II)V

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    const/4 v14, 0x0

    float-to-int v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v7, v15}, Lcom/meizu/widget/OptionPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4
.end method

.method public startPopupActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    .line 102
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    invoke-virtual {v1}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->finish()V

    .line 105
    :cond_0
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    invoke-direct {v0, p0, p2}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/view/ActionMode$Callback;)V

    .line 106
    .local v0, "mode":Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->invalidate()V

    .line 108
    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    .line 109
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    .line 113
    .end local v0    # "mode":Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWindow()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/OptionPopupWindow;->showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z

    goto :goto_0
.end method
