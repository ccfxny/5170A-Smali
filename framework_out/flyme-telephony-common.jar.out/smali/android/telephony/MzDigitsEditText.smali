.class public Landroid/telephony/MzDigitsEditText;
.super Lcom/meizu/widget/EditTextEx;
.source "MzDigitsEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Landroid/telephony/MzDigitsEditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/telephony/MzDigitsEditText;->setInputType(I)V

    .line 26
    invoke-virtual {p0, v2}, Landroid/telephony/MzDigitsEditText;->setShowSoftInputOnFocus(Z)V

    .line 27
    invoke-virtual {p0, v2}, Landroid/telephony/MzDigitsEditText;->setInputMethodEnabled(Z)V

    .line 28
    invoke-virtual {p0, v2}, Landroid/telephony/MzDigitsEditText;->setOptionsVisible(Z)V

    .line 29
    invoke-virtual {p0, v2}, Landroid/telephony/MzDigitsEditText;->setMagnifierVisible(Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 37
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    .line 38
    .local v0, "added":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v2

    .line 39
    .local v2, "removed":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 40
    .local v1, "length":I
    if-le v0, v2, :cond_2

    .line 41
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 42
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 56
    .end local v0    # "added":I
    .end local v1    # "length":I
    .end local v2    # "removed":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meizu/widget/EditTextEx;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57
    :cond_1
    :goto_1
    return-void

    .line 44
    .restart local v0    # "added":I
    .restart local v1    # "length":I
    .restart local v2    # "removed":I
    :cond_2
    if-le v2, v0, :cond_1

    .line 45
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 46
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 47
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    goto :goto_0

    .line 51
    .end local v0    # "added":I
    .end local v1    # "length":I
    .end local v2    # "removed":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method
