.class Landroid/test/TouchUtils$ViewStateSnapshot;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewStateSnapshot"
.end annotation


# instance fields
.field final mChildCount:I

.field final mFirst:Landroid/view/View;

.field final mFirstTop:I

.field final mLast:Landroid/view/View;

.field final mLastBottom:I


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    .line 789
    iget v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    if-nez v0, :cond_0

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    .line 791
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    .line 798
    :goto_0
    return-void

    .line 793
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    .line 794
    iget v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    .line 795
    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    .line 796
    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # Landroid/test/TouchUtils$1;

    .prologue
    .line 781
    invoke-direct {p0, p1}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 802
    if-ne p0, p1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v1

    .line 805
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 806
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 809
    check-cast v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    .line 810
    .local v0, "that":Landroid/test/TouchUtils$ViewStateSnapshot;
    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    iget-object v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    iget-object v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 819
    iget-object v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 820
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 821
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    add-int v0, v1, v2

    .line 822
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    add-int v0, v1, v2

    .line 823
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    add-int v0, v1, v2

    .line 824
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 819
    goto :goto_0
.end method
