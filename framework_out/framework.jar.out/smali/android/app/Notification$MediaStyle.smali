.class public Landroid/app/Notification$MediaStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field private mActionsToShowInCompact:[I

.field private mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4733
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4730
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 4734
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4736
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4730
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 4737
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4738
    return-void
.end method

.method private generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    const v1, 0x1020331

    .line 4817
    iget-object v4, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_1

    const/4 v7, 0x1

    .line 4818
    .local v7, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x1090075

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4820
    .local v0, "button":Landroid/widget/RemoteViews;
    iget v4, p1, Landroid/app/Notification$Action;->icon:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4821
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4824
    if-nez v7, :cond_0

    .line 4825
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4827
    :cond_0
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 4828
    return-object v0

    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v7    # "tombstone":Z
    :cond_1
    move v7, v2

    .line 4817
    goto :goto_0
.end method

.method private getBigLayoutResource(I)I
    .locals 1
    .param p1, "actionCount"    # I

    .prologue
    .line 4878
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 4879
    const v0, 0x109007a

    .line 4881
    :goto_0
    return v0

    :cond_0
    const v0, 0x1090079

    goto :goto_0
.end method

.method private hideRightIcon(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 4886
    const v0, 0x1020034

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4887
    return-void
.end method

.method private makeMediaBigContentView()Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const v7, 0x102033a

    .line 4859
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4860
    .local v0, "actionCount":I
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v0}, Landroid/app/Notification$MediaStyle;->getBigLayoutResource(I)I

    move-result v5

    const/4 v6, 0x0

    # invokes: Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    invoke-static {v4, v5, v6}, Landroid/app/Notification$Builder;->access$2200(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 4863
    .local v1, "big":Landroid/widget/RemoteViews;
    if-lez v0, :cond_0

    .line 4864
    invoke-virtual {v1, v7}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4865
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 4866
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    invoke-direct {p0, v4}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4867
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4865
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4870
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->styleText(Landroid/widget/RemoteViews;)V

    .line 4871
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->hideRightIcon(Landroid/widget/RemoteViews;)V

    .line 4872
    invoke-virtual {p0, v1}, Landroid/app/Notification$MediaStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 4873
    const v4, 0x102000d

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4874
    return-object v1
.end method

.method private makeMediaContentView()Landroid/widget/RemoteViews;
    .locals 11

    .prologue
    const v9, 0x102033a

    const/4 v6, 0x0

    .line 4832
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v8, 0x109007e

    # invokes: Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    invoke-static {v7, v8, v6}, Landroid/app/Notification$Builder;->access$2200(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 4835
    .local v5, "view":Landroid/widget/RemoteViews;
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4836
    .local v4, "numActions":I
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v7, :cond_0

    move v0, v6

    .line 4839
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 4840
    invoke-virtual {v5, v9}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4841
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 4842
    if-lt v3, v4, :cond_1

    .line 4843
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x1

    add-int/lit8 v10, v4, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4836
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v7, v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 4848
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_1
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 4849
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4850
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v5, v9, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4841
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4853
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v5}, Landroid/app/Notification$MediaStyle;->styleText(Landroid/widget/RemoteViews;)V

    .line 4854
    invoke-direct {p0, v5}, Landroid/app/Notification$MediaStyle;->hideRightIcon(Landroid/widget/RemoteViews;)V

    .line 4855
    return-object v5
.end method

.method private styleText(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 4893
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 4895
    .local v0, "primaryColor":I
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4897
    .local v1, "secondaryColor":I
    const v2, 0x1020016

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4898
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$2300(Landroid/app/Notification$Builder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4899
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mUseChronometer:Z
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$2400(Landroid/app/Notification$Builder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4900
    const v2, 0x1020346

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4905
    :cond_0
    :goto_0
    const v2, 0x1020015

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4906
    const v2, 0x1020068

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4907
    const v2, 0x102034a

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4908
    return-void

    .line 4902
    :cond_1
    const v2, 0x102007f

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4791
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4793
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    .line 4794
    const-string v0, "android.mediaSession"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4796
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_1

    .line 4797
    const-string v0, "android.compactActions"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4799
    :cond_1
    return-void
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4765
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 4766
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4767
    const-string/jumbo v0, "transport"

    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 4769
    :cond_0
    return-object p1
.end method

.method protected hasProgress()Z
    .locals 1

    .prologue
    .line 4915
    const/4 v0, 0x0

    return v0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4785
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1600(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4786
    return-void
.end method

.method public populateContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4777
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$2100(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4778
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4806
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4808
    const-string v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4809
    const-string v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 4811
    :cond_0
    const-string v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4812
    const-string v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 4814
    :cond_1
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 4756
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 4757
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "actions"    # [I

    .prologue
    .line 4747
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 4748
    return-object p0
.end method
