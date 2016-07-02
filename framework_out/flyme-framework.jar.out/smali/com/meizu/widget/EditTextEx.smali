.class public Lcom/meizu/widget/EditTextEx;
.super Landroid/widget/EditText;
.source "EditTextEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/EditTextEx$StaticHint;,
        Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;
    }
.end annotation


# static fields
.field private static final COVER_TYPE_ALL:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "EditTextEx"


# instance fields
.field private mIsCursorAlwaysVisible:Z

.field private mIsInputMethodEnabled:Z

.field private mIsMagnifierVisible:Z

.field private mIsOptionsVisible:Z

.field private mOnPrivateIMECommandListener:Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

.field private mPrivateImeOptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 600
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.meizu.input.cover.SMILE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.meizu.input.cover.VOICE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/EditTextEx;->COVER_TYPE_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const v0, 0xa010022

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v6, Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-direct {v6}, Lcom/meizu/widget/EditTextEx$StaticHint;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    .line 60
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    .line 62
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    .line 64
    iput-boolean v8, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    .line 66
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsInputMethodEnabled:Z

    .line 78
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getTextSize()F

    move-result v5

    .line 79
    .local v5, "textSize":F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 80
    .local v4, "paddingRect":Landroid/graphics/Rect;
    sget-object v6, Lcom/flyme/internal/R$styleable;->EditTextEx:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 82
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 84
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 89
    :pswitch_1
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintColor(Landroid/content/res/ColorStateList;)Z

    goto :goto_1

    .line 92
    :pswitch_2
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintWidth(I)Z

    goto :goto_1

    .line 96
    :pswitch_3
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v5, v6

    .line 97
    goto :goto_1

    .line 100
    :pswitch_4
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintGravity(I)Z

    goto :goto_1

    .line 104
    :pswitch_5
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 108
    :pswitch_6
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 112
    :pswitch_7
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 116
    :pswitch_8
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 120
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v6, v4}, Lcom/meizu/widget/EditTextEx$StaticHint;->setPadding(Landroid/graphics/Rect;)V

    .line 122
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    float-to-int v7, v5

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintSize(I)Z

    .line 123
    invoke-direct {p0}, Lcom/meizu/widget/EditTextEx;->updateStaticHint()V

    .line 124
    return-void

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public static notifyImeActionChanged(Landroid/widget/EditText;)V
    .locals 4
    .param p0, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 339
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 340
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "initialSelStart"

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string v2, "initialSelEnd"

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string v2, "imeOptions"

    invoke-virtual {p0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v2, "actionId"

    invoke-virtual {p0}, Landroid/widget/EditText;->getImeActionId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v2, "actionLabel"

    invoke-virtual {p0}, Landroid/widget/EditText;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 347
    const-string v2, "com.meizu.input.attrsChanged"

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 349
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private updateStaticHint()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    goto :goto_0
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    # invokes: Lcom/meizu/widget/EditTextEx$StaticHint;->getHintWidth()I
    invoke-static {v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->access$000(Lcom/meizu/widget/EditTextEx$StaticHint;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getStaticHint(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStaticHintGravity()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintGravity()I

    move-result v0

    return v0
.end method

.method public getStaticHintPaddingBottom()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getStaticHintPaddingLeft()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getStaticHintPaddingRight()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getStaticHintPaddingTop()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final getStaticHintTextColor()I
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 169
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v1

    .line 172
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0
.end method

.method public final getStaticHintTextSize()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintSize()I

    move-result v0

    return v0
.end method

.method public final getStaticHintWidth()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    # invokes: Lcom/meizu/widget/EditTextEx$StaticHint;->getHintWidth()I
    invoke-static {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->access$000(Lcom/meizu/widget/EditTextEx$StaticHint;)I

    move-result v0

    return v0
.end method

.method public isCursorAlwaysVisible(Z)Z
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    return v0
.end method

.method public final isInputMethodEnabled()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsInputMethodEnabled:Z

    return v0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    return v0
.end method

.method public isOptionsVisible()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    return v0
.end method

.method public notifyImeActionChanged()V
    .locals 0

    .prologue
    .line 331
    invoke-static {p0}, Lcom/meizu/widget/EditTextEx;->notifyImeActionChanged(Landroid/widget/EditText;)V

    .line 332
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsInputMethodEnabled:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v5}, Lcom/meizu/widget/EditTextEx$StaticHint;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    .line 275
    .local v2, "paddingLeft":I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getExtendedPaddingTop()I

    move-result v3

    .line 276
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getDrawableState()[I

    move-result-object v4

    .line 277
    .local v4, "stateSet":[I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 278
    .local v1, "hintColors":Landroid/content/res/ColorStateList;
    if-nez v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v0

    .line 283
    .local v0, "defColor":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 284
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getScrollX()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getScrollY()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 285
    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getExtendedPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v3

    invoke-virtual {v5, p1, v4, v0, v6}, Lcom/meizu/widget/EditTextEx$StaticHint;->drawHint(Landroid/graphics/Canvas;[III)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 289
    .end local v0    # "defColor":I
    .end local v1    # "hintColors":Landroid/content/res/ColorStateList;
    .end local v2    # "paddingLeft":I
    .end local v3    # "paddingTop":I
    .end local v4    # "stateSet":[I
    :cond_0
    return-void

    .line 281
    .restart local v1    # "hintColors":Landroid/content/res/ColorStateList;
    .restart local v2    # "paddingLeft":I
    .restart local v3    # "paddingTop":I
    .restart local v4    # "stateSet":[I
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .restart local v0    # "defColor":I
    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mOnPrivateIMECommandListener:Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mOnPrivateIMECommandListener:Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

    invoke-interface {v0, p1, p2}, Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public final sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 355
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 356
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 357
    :cond_0
    return-void
.end method

.method public setCursorAlwaysVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    .line 409
    return-void
.end method

.method public final setInputMethodEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsInputMethodEnabled:Z

    .line 371
    return-void
.end method

.method public setMagnifierVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    .line 417
    return-void
.end method

.method public final setOnPrivateIMECommandListener(Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx;->mOnPrivateIMECommandListener:Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

    .line 364
    return-void
.end method

.method public setOptionsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    .line 425
    return-void
.end method

.method public final setStaticHint(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/EditTextEx;->setStaticHint(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public final setStaticHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 133
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 135
    :cond_0
    return-void
.end method

.method public final setStaticHintGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintGravity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 220
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 222
    :cond_0
    return-void
.end method

.method public setStaticHintPaddingBottom(I)V
    .locals 1
    .param p1, "paddingBottom"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 262
    return-void
.end method

.method public setStaticHintPaddingLeft(I)V
    .locals 1
    .param p1, "paddingLeft"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 238
    return-void
.end method

.method public setStaticHintPaddingRight(I)V
    .locals 1
    .param p1, "paddingRight"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 246
    return-void
.end method

.method public setStaticHintPaddingTop(I)V
    .locals 1
    .param p1, "paddingTop"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 254
    return-void
.end method

.method public final setStaticHintTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 161
    :cond_0
    return-void
.end method

.method public final setStaticHintTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintSize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 182
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 184
    :cond_0
    return-void
.end method

.method public final setStaticHintWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintWidth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 201
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 203
    :cond_0
    return-void
.end method

.method public final showIMECoverView(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "optKey"    # Ljava/lang/String;
    .param p2, "optValue"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "pre":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 305
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    .line 307
    :cond_0
    iget-object v7, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-static {v6, v7}, Landroid/view/inputmethod/EditorInfo;->splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 308
    sget-object v0, Lcom/meizu/widget/EditTextEx;->COVER_TYPE_ALL:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v4, v0, v2

    .line 309
    .local v4, "item":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 313
    iget-object v7, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-interface {v7, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-static {v7}, Landroid/view/inputmethod/EditorInfo;->makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "cur":Ljava/lang/String;
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 317
    invoke-virtual {p0, v1}, Lcom/meizu/widget/EditTextEx;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 319
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v3, :cond_3

    const/4 v7, 0x0

    .line 323
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_1
    return v7

    .line 320
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-virtual {v3, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 323
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v7, 0x1

    goto :goto_1
.end method
