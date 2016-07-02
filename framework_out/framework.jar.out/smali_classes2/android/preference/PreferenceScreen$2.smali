.class Landroid/preference/PreferenceScreen$2;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/ListView$DividerPadding;


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
    .line 338
    iput-object p1, p0, Landroid/preference/PreferenceScreen$2;->this$0:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 341
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 342
    .local v1, "padding":[I
    aput v7, v1, v8

    aput v7, v1, v7

    .line 343
    iget-object v6, p0, Landroid/preference/PreferenceScreen$2;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6}, Landroid/preference/PreferenceScreen;->access$000(Landroid/preference/PreferenceScreen;)Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 346
    iget-object v6, p0, Landroid/preference/PreferenceScreen$2;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6}, Landroid/preference/PreferenceScreen;->access$000(Landroid/preference/PreferenceScreen;)Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 347
    .local v5, "size":I
    if-ltz p1, :cond_0

    if-ge p1, v5, :cond_0

    iget-object v6, p0, Landroid/preference/PreferenceScreen$2;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6}, Landroid/preference/PreferenceScreen;->access$000(Landroid/preference/PreferenceScreen;)Landroid/widget/ListAdapter;

    move-result-object v6

    instance-of v6, v6, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v6, :cond_0

    .line 349
    iget-object v6, p0, Landroid/preference/PreferenceScreen$2;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6}, Landroid/preference/PreferenceScreen;->access$000(Landroid/preference/PreferenceScreen;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .line 350
    .local v0, "adapter":Landroid/preference/PreferenceGroupAdapter;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    .line 351
    .local v4, "preference":Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 352
    invoke-virtual {v4}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 353
    const v2, 0xa0e0229

    .line 354
    .local v2, "paddingLeftId":I
    const v3, 0xa0e022a

    .line 359
    .local v3, "paddingRightId":I
    :goto_0
    iget-object v6, p0, Landroid/preference/PreferenceScreen$2;->this$0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v1, v7

    .line 362
    iget-object v6, p0, Landroid/preference/PreferenceScreen$2;->this$0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v1, v8

    .line 369
    .end local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    .end local v2    # "paddingLeftId":I
    .end local v3    # "paddingRightId":I
    .end local v4    # "preference":Landroid/preference/Preference;
    .end local v5    # "size":I
    :cond_0
    return-object v1

    .line 356
    .restart local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    .restart local v4    # "preference":Landroid/preference/Preference;
    .restart local v5    # "size":I
    :cond_1
    const v2, 0xa0e0228

    .line 357
    .restart local v2    # "paddingLeftId":I
    const v3, 0xa0e022b

    .restart local v3    # "paddingRightId":I
    goto :goto_0
.end method
