.class public final Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmilParItem"
.end annotation


# instance fields
.field altItem:Ljava/lang/String;

.field mPart:Lcom/meizu/android/mms/pdu/MzPduPart;

.field mTag:Ljava/lang/String;

.field regionItem:Ljava/lang/String;

.field srcItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mTag:Ljava/lang/String;

    .line 871
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->srcItem:Ljava/lang/String;

    .line 872
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->regionItem:Ljava/lang/String;

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->altItem:Ljava/lang/String;

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mPart:Lcom/meizu/android/mms/pdu/MzPduPart;

    .line 877
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmilParItem\uff1amTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-- src = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->srcItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-- region = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->regionItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->altItem:Ljava/lang/String;

    return-object v0
.end method

.method public getPduPart()Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mPart:Lcom/meizu/android/mms/pdu/MzPduPart;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->regionItem:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->srcItem:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isLocationItem()Z
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->altItem:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse;->isLocationUri(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "alt"    # Ljava/lang/String;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->altItem:Ljava/lang/String;

    .line 913
    return-void
.end method

.method public setPduPart(Lcom/meizu/android/mms/pdu/MzPduPart;)V
    .locals 0
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mPart:Lcom/meizu/android/mms/pdu/MzPduPart;

    .line 917
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 908
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->regionItem:Ljava/lang/String;

    .line 909
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->srcItem:Ljava/lang/String;

    .line 905
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mTag:Ljava/lang/String;

    .line 901
    return-void
.end method
