.class Landroid/widget/AutoCompleteTextView$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mDropDownDivider:Landroid/graphics/drawable/Drawable;

.field private mDropDownPaddingEnd:I

.field private mDropDownPaddingStart:I

.field private mDropDownPaddingTop:I

.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 1403
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->this$0:Landroid/widget/AutoCompleteTextView;

    .line 1404
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1405
    return-void
.end method


# virtual methods
.method public setPaddingEnd(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1424
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingEnd:I

    .line 1425
    return-void
.end method

.method public setPaddingStart(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1420
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingStart:I

    .line 1421
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1428
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingTop:I

    .line 1429
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1409
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1410
    .local v0, "buildDropDown":Z
    :goto_0
    iget v2, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingStart:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingTop:I

    iget v4, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingEnd:I

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->setDropDownListViewPadding(IIII)V

    .line 1411
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1417
    return-void

    .end local v0    # "buildDropDown":Z
    :cond_0
    move v0, v1

    .line 1409
    goto :goto_0
.end method
