.class public final Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse;
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
            "Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    .line 814
    return-void
.end method


# virtual methods
.method public add(Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;)V
    .locals 1
    .param p1, "smilParItem"    # Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .prologue
    .line 839
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 840
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    .line 841
    .local v1, "item":Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->dump()Ljava/lang/String;

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

    .line 842
    .end local v1    # "item":Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

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

.method public item(I)Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 821
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    .line 823
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemLast()Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v0

    return-object v0
.end method

.method public makeSmilXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 846
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 847
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 848
    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v1

    .line 849
    .local v1, "item":Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    invoke-virtual {v1}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 851
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    invoke-virtual {v1}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    :cond_0
    invoke-virtual {v1}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "region=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 858
    :cond_1
    const-string v3, "/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    .end local v1    # "item":Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
