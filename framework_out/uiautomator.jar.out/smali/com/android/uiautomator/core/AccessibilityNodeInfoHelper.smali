.class Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;
    .locals 3
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    .line 40
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .local v1, "nodeRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v0, "displayRect":Landroid/graphics/Rect;
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 45
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 46
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 47
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 49
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method
