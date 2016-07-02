.class public Lcom/meizu/widget/CheckedTwoLineListItem;
.super Landroid/widget/LinearLayout;
.source "CheckedTwoLineListItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mCheckButton:Landroid/widget/CompoundButton;

.field private mChecked:Z

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/widget/CheckedTwoLineListItem;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const v0, 0xa03000d

    invoke-static {p1, v0, p0}, Lcom/meizu/widget/CheckedTwoLineListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 80
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 81
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/meizu/widget/CheckedTwoLineListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/meizu/widget/CheckedTwoLineListItem;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/meizu/widget/CheckedTwoLineListItem;->mergeDrawableStates([I[I)[I

    .line 84
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    .line 66
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    .line 67
    iget-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/CheckedTwoLineListItem;->refreshDrawableState()V

    .line 71
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;->setChecked(Z)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
