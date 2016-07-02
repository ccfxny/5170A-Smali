.class Landroid/preference/PreferenceScreen$1;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/ListView$DividerFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceScreen;->mzBind(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bottomDeviderEnabled()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v3, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Landroid/preference/PreferenceScreen;->access$000(Landroid/preference/PreferenceScreen;)Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 315
    iget-object v3, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Landroid/preference/PreferenceScreen;->access$000(Landroid/preference/PreferenceScreen;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 316
    .local v1, "size":I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 329
    .end local v1    # "size":I
    :cond_0
    :goto_0
    return v2

    .line 320
    .restart local v1    # "size":I
    :cond_1
    iget-object v3, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Landroid/preference/PreferenceScreen;->access$000(Landroid/preference/PreferenceScreen;)Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_4

    .line 321
    iget-object v3, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Landroid/preference/PreferenceScreen;->access$000(Landroid/preference/PreferenceScreen;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .line 322
    .local v0, "adapter":Landroid/preference/PreferenceGroupAdapter;
    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mIsShowBottomDivider:Z
    invoke-static {v3}, Landroid/preference/PreferenceScreen;->access$100(Landroid/preference/PreferenceScreen;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v1, -0x1

    if-gt v3, v4, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-nez v3, :cond_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->isFilterDivider()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-nez v3, :cond_0

    .line 329
    .end local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    .end local v1    # "size":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method
