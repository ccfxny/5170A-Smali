.class public Lcom/android/internal/app/MzResolverActivity$DetailListFrag;
.super Landroid/app/Fragment;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailListFrag"
.end annotation


# instance fields
.field private mActivity:Lcom/android/internal/app/MzResolverActivity;

.field private mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

.field private mBtnBack:Landroid/widget/Button;

.field private mListDividerPaddingLeft:I

.field private mListDividerPaddingRight:I

.field private mListView:Lcom/meizu/widget/DragSortListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1658
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    .prologue
    .line 1658
    iget v0, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListDividerPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)Lcom/android/internal/app/MzResolverActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    .prologue
    .line 1658
    iget v0, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListDividerPaddingLeft:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1669
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1670
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 1675
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/app/MzResolverActivity;

    if-nez v1, :cond_1

    .line 1676
    :cond_0
    const/4 v0, 0x0

    .line 1725
    :goto_0
    return-object v0

    .line 1678
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MzResolverActivity;

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    .line 1679
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v1, v4}, Lcom/android/internal/app/MzResolverActivity;->setStatusBarDarkIcon(Z)V

    .line 1680
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0e0220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListDividerPaddingLeft:I

    .line 1681
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0e0221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListDividerPaddingRight:I

    .line 1682
    const v1, 0xa030033

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1683
    .local v0, "v":Landroid/view/View;
    const v1, 0xa0f00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/DragSortListView;

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListView:Lcom/meizu/widget/DragSortListView;

    .line 1684
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListView:Lcom/meizu/widget/DragSortListView;

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;-><init>(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragSortListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 1694
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListView:Lcom/meizu/widget/DragSortListView;

    iget v2, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListDividerPaddingLeft:I

    iget v3, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListDividerPaddingRight:I

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/DragSortListView;->setDividerPadding(II)V

    .line 1695
    const v1, 0xa0f00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mBtnBack:Landroid/widget/Button;

    .line 1696
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mBtnBack:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$2;-><init>(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1704
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->access$000(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    .line 1705
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    const v2, 0xa030031

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->setItemLayoutId(I)V

    .line 1706
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v1, v4}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->setIsDetail(Z)V

    .line 1707
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListView:Lcom/meizu/widget/DragSortListView;

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1708
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListView:Lcom/meizu/widget/DragSortListView;

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$3;-><init>(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1716
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListView:Lcom/meizu/widget/DragSortListView;

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$4;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$4;-><init>(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragSortListView;->setDropListener(Lcom/meizu/widget/DragSortListView$DropListener;)V

    goto/16 :goto_0
.end method
