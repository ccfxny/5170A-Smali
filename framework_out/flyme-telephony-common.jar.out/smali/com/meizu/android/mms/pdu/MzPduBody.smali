.class public Lcom/meizu/android/mms/pdu/MzPduBody;
.super Ljava/lang/Object;
.source "MzPduBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mPartMapByContentId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByContentLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mParts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    .line 28
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 30
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByName:Ljava/util/Map;

    .line 31
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByName:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private putPartToMaps(Lcom/meizu/android/mms/pdu/MzPduPart;)V
    .locals 7
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v1

    .line 48
    .local v1, "contentId":[B
    if-eqz v1, :cond_0

    .line 49
    iget-object v5, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v2

    .line 54
    .local v2, "contentLocation":[B
    if-eqz v2, :cond_1

    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 56
    .local v0, "clc":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v0    # "clc":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v4

    .line 61
    .local v4, "name":[B
    if-eqz v4, :cond_2

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 63
    .restart local v0    # "clc":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v0    # "clc":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getFilename()[B

    move-result-object v3

    .line 68
    .local v3, "fileName":[B
    if-eqz v3, :cond_3

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 70
    .restart local v0    # "clc":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v0    # "clc":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public addPart(ILcom/meizu/android/mms/pdu/MzPduPart;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_0
    invoke-direct {p0, p2}, Lcom/meizu/android/mms/pdu/MzPduBody;->putPartToMaps(Lcom/meizu/android/mms/pdu/MzPduPart;)V

    .line 103
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public addPart(Lcom/meizu/android/mms/pdu/MzPduPart;)Z
    .locals 1
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzPduBody;->putPartToMaps(Lcom/meizu/android/mms/pdu/MzPduPart;)V

    .line 87
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/android/mms/pdu/MzPduPart;

    return-object v0
.end method

.method public getPartByContentId(Ljava/lang/String;)Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/android/mms/pdu/MzPduPart;

    return-object v0
.end method

.method public getPartByContentLocation(Ljava/lang/String;)Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 1
    .param p1, "contentLocation"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/android/mms/pdu/MzPduPart;

    return-object v0
.end method

.method public getPartByFileName(Ljava/lang/String;)Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/android/mms/pdu/MzPduPart;

    return-object v0
.end method

.method public getPartByName(Ljava/lang/String;)Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/android/mms/pdu/MzPduPart;

    return-object v0
.end method

.method public getPartIndex(Lcom/meizu/android/mms/pdu/MzPduPart;)I
    .locals 1
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPartsNum()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 121
    return-void
.end method

.method public removePart(I)Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/android/mms/pdu/MzPduPart;

    return-object v0
.end method
