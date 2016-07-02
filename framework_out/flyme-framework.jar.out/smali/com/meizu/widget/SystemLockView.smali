.class public Lcom/meizu/widget/SystemLockView;
.super Landroid/widget/LinearLayout;
.source "SystemLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/SystemLockView$UnlockPatternListener;,
        Lcom/meizu/widget/SystemLockView$dispalyTextMode;,
        Lcom/meizu/widget/SystemLockView$OnPanelListener;
    }
.end annotation


# static fields
.field public static final COMPLICATE:I = 0x1

.field private static final DELETE:I = 0x0

.field private static final DIGITALS:I = 0xc

.field private static final KEY_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_RIGHT:Ljava/lang/String; = "right"

.field public static final MAX_CELL:I = 0x7fffffff

.field private static final OK:I = 0x1

.field public static final SIMPLE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private digitPanel:Landroid/view/View;

.field private haschar:Z

.field private illegal:Z

.field private isInitKeyPadType:Z

.field private mBottomLayoutResId:I

.field private mCellCount:I

.field private mEditText:Landroid/widget/EditText;

.field private mEnableHapticFeedback:Z

.field private mIcons:[Landroid/graphics/drawable/Drawable;

.field private mIcons2:[Landroid/graphics/drawable/Drawable;

.field private mInStealthMode:Z

.field private mInputTextButton:Landroid/widget/ImageView;

.field private mInputTextButtonStat:I

.field private mInputTextButtonVisible:Z

.field private mIsNotify:Z

.field private mKeyPad:Lcom/meizu/widget/LockDigitView;

.field private mLeftButton:Landroid/widget/Button;

.field private mMaxCellLength:I

.field private mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

.field private mPassword:Ljava/lang/String;

.field private mReturnBtn:Landroid/widget/ImageView;

.field private mRightButton:Landroid/widget/Button;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mSpecial:Lcom/meizu/widget/LockPasswordView;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mTipTextView:Landroid/widget/TextView;

.field private mTipTextView2:Landroid/widget/TextView;

.field private mWindowRect:Landroid/graphics/Rect;

.field private maxlen:I

.field private mkeyPadType:I

.field private passwordLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "SystemLockView"

    sput-object v0, Lcom/meizu/widget/SystemLockView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 124
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    .line 126
    const v0, 0xa030057

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    .line 129
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->haschar:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->illegal:Z

    .line 140
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->maxlen:I

    .line 141
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->isInitKeyPadType:Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    .line 436
    new-instance v0, Lcom/meizu/widget/SystemLockView$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/SystemLockView$1;-><init>(Lcom/meizu/widget/SystemLockView;)V

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 161
    sget-object v0, Lcom/flyme/internal/R$styleable;->SystemLockView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 163
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 165
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 167
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 170
    const/4 v0, 0x3

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 172
    const/4 v0, 0x5

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 175
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xa030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->digitPanel:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->digitPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->addView(Landroid/view/View;)V

    .line 179
    const v0, 0xa0f00cf

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 180
    const v0, 0xa0f00d1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 181
    const v0, 0xa0f00d4

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 182
    const v0, 0xa0f00d6

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 183
    const v0, 0xa0f00d5

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    .line 184
    const v0, 0xa0f00d3

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    .line 185
    const v0, 0xa0f00d2

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v1, v0, v7

    .line 188
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_1
    const v0, 0xa0f000d

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockPasswordView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 198
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 200
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 203
    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0xc

    if-ge v7, v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 203
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa02003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCircleSolidDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa02003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCircleHollowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const v1, 0xa020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 213
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 215
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->isInitKeyPadType:Z

    if-nez v0, :cond_4

    .line 216
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    invoke-direct {p0, v0}, Lcom/meizu/widget/SystemLockView;->changeType(I)V

    .line 218
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 219
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateWidgetLayout()V

    .line 221
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;
    .param p1, "x1"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyLeftButtonClick()V

    return-void
.end method

.method static synthetic access$1002(Lcom/meizu/widget/SystemLockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->haschar:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->addPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/widget/SystemLockView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyRightButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->addCell(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/widget/SystemLockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/SystemLockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/SystemLockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/widget/SystemLockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellFhish()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/widget/SystemLockView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/widget/SystemLockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/SystemLockView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->illegal:Z

    return p1
.end method

.method private addCell(Ljava/lang/String;)V
    .locals 2
    .param p1, "pressedDigit"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 247
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 248
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 249
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellAdded()V

    .line 251
    return-void
.end method

.method private addPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "pressedString"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 520
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 521
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellAdded()V

    .line 522
    return-void
.end method

.method private changeType(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 488
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 489
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 491
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v1, v5}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 497
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 499
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 502
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 515
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 504
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 505
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 507
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 508
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 509
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 511
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    new-instance v2, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;

    invoke-direct {v2, p0, v5}, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;-><init>(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/SystemLockView$1;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 512
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xa02005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .param p1, "cell"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 419
    .local v2, "r":I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 420
    .local v0, "c":I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 421
    .local v1, "num":I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 422
    const-string v3, "left"

    .line 430
    .local v3, "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 423
    .end local v3    # "ret":Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 424
    const-string v3, "0"

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 425
    .end local v3    # "ret":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 426
    const-string v3, "right"

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 428
    .end local v3    # "ret":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellAdded(Ljava/lang/String;)V

    .line 279
    :cond_0
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    if-lt v0, v1, :cond_1

    .line 281
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    if-nez v0, :cond_1

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    .line 283
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellFhish()V

    .line 286
    :cond_1
    return-void
.end method

.method private notifyCellCleared()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellCleared(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method private notifyCellFhish()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellFhish(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method private notifyInputTextButtonClick()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onInputTextButtonClick(Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method

.method private notifyKeyLeftButtonClick()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onKeyLeftButtonClick(Ljava/lang/String;)V

    .line 322
    :cond_0
    return-void
.end method

.method private notifyKeyRightButtonClick()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onKeyRightButtonClick(Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method private notifyLeftButtonClick()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onLeftButtonClick(Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method

.method private notifyRightButtonClick()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onRightButtonClick(Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void
.end method

.method private updateDeleteButtonStatu()V
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-nez v0, :cond_1

    .line 265
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePasswordTextView()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 255
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 258
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateDeleteButtonStatu()V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->invalidate()V

    .line 261
    return-void
.end method

.method private updateWidgetLayout()V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 228
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0xa0f00d7

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 229
    .local v1, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 230
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    if-eqz v2, :cond_2

    .line 231
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    const v3, 0xa030057

    if-ne v2, v3, :cond_1

    .line 237
    const v2, 0xa0f00d8

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 238
    const v2, 0xa0f00d9

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 239
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_1
    return-void

    .line 233
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkChar()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->haschar:Z

    return v0
.end method

.method public checkIllegal()Z
    .locals 1

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->illegal:Z

    return v0
.end method

.method public clearCell(Z)V
    .locals 5
    .param p1, "clearAll"    # Z

    .prologue
    const/4 v4, 0x0

    .line 654
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-lez v2, :cond_1

    .line 655
    if-eqz p1, :cond_3

    .line 656
    const-string v2, ""

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 657
    iput v4, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 658
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 659
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 672
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellCleared()V

    .line 673
    iput-boolean v4, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    .line 675
    :cond_1
    return-void

    .line 661
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    goto :goto_0

    .line 663
    :cond_3
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 664
    .local v1, "numString":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 666
    .local v0, "newString":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 667
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 668
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    if-nez v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->deleteLastCell()V

    goto :goto_0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEnteredPassword()V
    .locals 3

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyRightButtonClick()V

    .line 728
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 729
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 732
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 734
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 349
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    if-ne v1, v2, :cond_1

    .line 350
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 353
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 371
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 355
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v1, :cond_2

    .line 356
    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    goto :goto_0

    .line 357
    :cond_2
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v1, v2, :cond_3

    .line 358
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 360
    :cond_3
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 362
    :cond_4
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 363
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyLeftButtonClick()V

    goto :goto_0

    .line 364
    :cond_5
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 365
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyRightButtonClick()V

    goto :goto_0

    .line 367
    :cond_6
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyLeftButtonClick()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 332
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 333
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v1, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 344
    :goto_0
    return v0

    .line 336
    :cond_0
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v1, v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 344
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 376
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 377
    return-void
.end method

.method public setHollowVisible(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 528
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 529
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 553
    return-void
.end method

.method public setInputTextButtonStat(II)V
    .locals 1
    .param p1, "stat"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x1

    .line 702
    if-nez p1, :cond_0

    .line 703
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 709
    :goto_0
    return-void

    .line 704
    :cond_0
    if-ne p1, v0, :cond_1

    .line 705
    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setInputTextButtonVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 715
    if-eqz p1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    .line 721
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyPadType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->isInitKeyPadType:Z

    .line 753
    iput p1, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    .line 754
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->changeType(I)V

    .line 755
    return-void
.end method

.method public setMaxLen(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 644
    iput p1, p0, Lcom/meizu/widget/SystemLockView;->maxlen:I

    .line 645
    const v0, 0x7fffffff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 646
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 647
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 648
    return-void
.end method

.method public setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .line 682
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 562
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 563
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->invalidate()V

    .line 571
    return-void
.end method

.method public setTip2(Ljava/lang/String;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->invalidate()V

    .line 774
    return-void
.end method

.method public setTip2_Visibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 782
    if-eqz p1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTipAnim(Ljava/lang/String;)V
    .locals 11
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 577
    iget-object v6, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 579
    .local v0, "animTV":Landroid/widget/TextView;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 580
    .local v2, "mTextAnim":Landroid/animation/AnimatorSet;
    const-string v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 581
    .local v5, "textfadeoutAnimator":Landroid/animation/ObjectAnimator;
    const-string v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 582
    .local v4, "textfadeinAnimator":Landroid/animation/ObjectAnimator;
    new-array v6, v8, [F

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 583
    .local v1, "delbtnfadeoutAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/meizu/widget/SystemLockView$2;

    invoke-direct {v6, p0}, Lcom/meizu/widget/SystemLockView$2;-><init>(Lcom/meizu/widget/SystemLockView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 594
    new-instance v6, Lcom/meizu/widget/SystemLockView$3;

    invoke-direct {v6, p0, v0, p1}, Lcom/meizu/widget/SystemLockView$3;-><init>(Lcom/meizu/widget/SystemLockView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 617
    const-string v6, "translationX"

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 618
    .local v3, "textdirAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xb4

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 619
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 620
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 621
    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v5, v6, v9

    aput-object v1, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 622
    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v4, v6, v9

    aput-object v3, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 623
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 624
    return-void

    .line 580
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 581
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 582
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 617
    :array_3
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

.method public setTipAnimShake(Ljava/lang/String;)V
    .locals 6
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 631
    .local v0, "animTV":Landroid/widget/TextView;
    const-string v2, "translationX"

    const/16 v3, 0x19

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x1a1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 636
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 638
    return-void

    .line 631
    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x4039999a    # 2.9f
        0x41066666    # 8.4f
        0x416e6666    # 14.9f
        0x41a33333    # 20.4f
        0x41b5999a    # 22.7f
        0x41a00000    # 20.0f
        0x41566666    # 13.4f
        0x4099999a    # 4.8f
        -0x3f8ccccd    # -3.8f
        -0x3ed80000    # -10.5f
        -0x3eae6666    # -13.1f
        -0x3ec80000    # -11.5f
        -0x3f100000    # -7.5f
        -0x3fe00000    # -2.5f
        0x40333333    # 2.8f
        0x40d9999a    # 6.8f
        0x41066666    # 8.4f
        0x40fccccd    # 7.9f
        0x40d9999a    # 6.8f
        0x40a9999a    # 5.3f
        0x406ccccd    # 3.7f
        0x400ccccd    # 2.2f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setWidgetLayoutVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 688
    const v1, 0xa0f00d7

    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 689
    .local v0, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 690
    if-eqz p1, :cond_1

    .line 691
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
