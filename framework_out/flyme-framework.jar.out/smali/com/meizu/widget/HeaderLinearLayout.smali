.class public Lcom/meizu/widget/HeaderLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HeaderLinearLayout.java"


# instance fields
.field private mScrollPane:Lcom/meizu/widget/ScrollPane;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/meizu/widget/HeaderLinearLayout;->getRight()I

    move-result v0

    .line 40
    .local v0, "right":I
    iget-object v1, p0, Lcom/meizu/widget/HeaderLinearLayout;->mScrollPane:Lcom/meizu/widget/ScrollPane;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/meizu/widget/HeaderLinearLayout;->mScrollPane:Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v1}, Lcom/meizu/widget/ScrollPane;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/HeaderLinearLayout;->mScrollPane:Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v2}, Lcom/meizu/widget/ScrollPane;->getScrollX()I

    move-result v2

    sub-int v0, v1, v2

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/HeaderLinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/widget/HeaderLinearLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/widget/HeaderLinearLayout;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 44
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method

.method public setScrollPane(Lcom/meizu/widget/ScrollPane;)V
    .locals 0
    .param p1, "v"    # Lcom/meizu/widget/ScrollPane;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/widget/HeaderLinearLayout;->mScrollPane:Lcom/meizu/widget/ScrollPane;

    .line 34
    return-void
.end method
