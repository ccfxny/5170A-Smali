.class public final Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmilBody"
.end annotation


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    .line 769
    return-void
.end method


# virtual methods
.method public add(Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;)V
    .locals 1
    .param p1, "smilPar"    # Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .prologue
    .line 790
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 791
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    .line 792
    .local v1, "item":Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "par\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->dump()Ljava/lang/String;

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

    .line 793
    .end local v1    # "item":Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public item(I)Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 776
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    .line 778
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemLast()Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->item(I)Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v0

    return-object v0
.end method

.method public makeSmilXml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 797
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 798
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "<body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 800
    const-string v2, "<par dur=\"5000ms\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->item(I)Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->makeSmilXml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    const-string v2, "</par>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_0
    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 805
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
