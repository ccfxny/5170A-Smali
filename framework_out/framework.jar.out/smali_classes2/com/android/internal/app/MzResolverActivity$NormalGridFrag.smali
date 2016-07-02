.class public Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;
.super Landroid/app/Fragment;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalGridFrag"
.end annotation


# instance fields
.field private mActivity:Lcom/android/internal/app/MzResolverActivity;

.field private mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mAlwaysUseOption:Z

.field private mGridView:Landroid/widget/GridView;

.field private mTextTitle:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1728
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    .prologue
    .line 1728
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1741
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1742
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1749
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/app/MzResolverActivity;

    if-nez v2, :cond_2

    .line 1750
    :cond_0
    const/4 v1, 0x0

    .line 1799
    :cond_1
    :goto_0
    return-object v1

    .line 1752
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/MzResolverActivity;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    .line 1753
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity;->access$1300(Lcom/android/internal/app/MzResolverActivity;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTitle:Ljava/lang/CharSequence;

    .line 1754
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity;->access$100(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    .line 1755
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity;->access$000(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    .line 1756
    const v2, 0xa030032

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1757
    .local v1, "v":Landroid/view/View;
    const v2, 0xa0f00ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mGridView:Landroid/widget/GridView;

    .line 1758
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    const v3, 0xa030030

    invoke-virtual {v2, v3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->setItemLayoutId(I)V

    .line 1759
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1760
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->setIsDetail(Z)V

    .line 1761
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;-><init>(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1783
    const v2, 0xa0f00ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTextTitle:Landroid/widget/TextView;

    .line 1784
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 1785
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1786
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTextTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1788
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    if-eqz v2, :cond_1

    .line 1789
    const v2, 0xa0f00ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1790
    .local v0, "checkBarLayout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_4

    .line 1791
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1792
    const v2, 0xa0f00ae

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 1794
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xa0a016c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1796
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1806
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1810
    return-void
.end method
