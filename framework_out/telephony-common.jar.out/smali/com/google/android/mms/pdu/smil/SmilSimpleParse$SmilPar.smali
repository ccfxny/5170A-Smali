.class public final Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/smil/SmilSimpleParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmilPar"
.end annotation


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    .line 813
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;)V
    .locals 1
    .param p1, "smilParItem"    # Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .prologue
    .line 838
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 839
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    .line 840
    .local v1, "item":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 841
    .end local v1    # "item":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    .line 822
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemLast()Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v0

    return-object v0
.end method

.method public makeSmilXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 845
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 846
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 847
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v1

    .line 848
    .local v1, "item":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 849
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 851
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "region=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 857
    :cond_1
    const-string v3, "/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    .end local v1    # "item":Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
