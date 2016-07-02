.class Lcom/android/internal/telephony/meizu/MzIccProvider$AdnRecordComparator;
.super Ljava/lang/Object;
.source "MzIccProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzIccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdnRecordComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzIccProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/meizu/MzIccProvider;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$AdnRecordComparator;->this$0:Lcom/android/internal/telephony/meizu/MzIccProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 715
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .local v0, "adn0":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object v1, p2

    .line 716
    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 717
    .local v1, "adn1":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, "name0":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v7

    .line 721
    .local v7, "name1":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 722
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 723
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 724
    .local v4, "ch1":C
    const/16 v8, 0x61

    if-lt v4, v8, :cond_0

    const/16 v8, 0x7a

    if-gt v4, v8, :cond_0

    const/4 v5, 0x1

    .line 725
    .local v5, "ch1Cansort":Z
    :goto_0
    if-nez v5, :cond_1

    const/4 v8, 0x1

    .line 734
    .end local v4    # "ch1":C
    .end local v5    # "ch1Cansort":Z
    :goto_1
    return v8

    .line 724
    .restart local v4    # "ch1":C
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 727
    .restart local v5    # "ch1Cansort":Z
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 728
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 729
    .local v2, "ch0":C
    const/16 v8, 0x61

    if-lt v2, v8, :cond_2

    const/16 v8, 0x7a

    if-gt v2, v8, :cond_2

    const/4 v3, 0x1

    .line 730
    .local v3, "ch0Cansort":Z
    :goto_2
    if-nez v3, :cond_3

    const/4 v8, -0x1

    goto :goto_1

    .line 729
    .end local v3    # "ch0Cansort":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 732
    .restart local v3    # "ch0Cansort":Z
    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 734
    .end local v2    # "ch0":C
    .end local v3    # "ch0Cansort":Z
    .end local v4    # "ch1":C
    .end local v5    # "ch1Cansort":Z
    :cond_4
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, -0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x1

    goto :goto_1
.end method
