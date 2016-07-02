.class public Lcom/android/uiautomator/core/UiCollection;
.super Lcom/android/uiautomator/core/UiObject;
.source "UiCollection.java"


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 0
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 8
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v5}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 53
    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiCollection;->getChildCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v0

    .line 55
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 56
    invoke-virtual {p0, p1, v4}, Lcom/android/uiautomator/core/UiCollection;->getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;

    move-result-object v3

    .line 57
    .local v3, "row":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiObject;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "nodeDesc":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    :cond_0
    return-object v3

    .line 61
    :cond_1
    new-instance v5, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v5}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v5, p2}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/uiautomator/core/UiObject;->getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v1

    .line 62
    .local v1, "item":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiObject;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "count":I
    .end local v1    # "item":Lcom/android/uiautomator/core/UiObject;
    .end local v2    # "nodeDesc":Ljava/lang/String;
    .end local v3    # "row":Lcom/android/uiautomator/core/UiObject;
    .end local v4    # "x":I
    :cond_2
    new-instance v5, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for description= \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;
    .locals 4
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/uiautomator/core/UiSelector;->instance(I)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 89
    .local v0, "patternSelector":Lcom/android/uiautomator/core/UiSelector;
    new-instance v1, Lcom/android/uiautomator/core/UiObject;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 8
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v5}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 111
    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiCollection;->getChildCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v0

    .line 113
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 114
    invoke-virtual {p0, p1, v4}, Lcom/android/uiautomator/core/UiCollection;->getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;

    move-result-object v3

    .line 115
    .local v3, "row":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiObject;->getText()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "nodeText":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    :cond_0
    return-object v3

    .line 119
    :cond_1
    new-instance v5, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v5}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v5, p2}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/uiautomator/core/UiObject;->getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v1

    .line 120
    .local v1, "item":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiObject;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "count":I
    .end local v1    # "item":Lcom/android/uiautomator/core/UiObject;
    .end local v2    # "nodeText":Ljava/lang/String;
    .end local v3    # "row":Lcom/android/uiautomator/core/UiObject;
    .end local v4    # "x":I
    :cond_2
    new-instance v5, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for text= \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getChildCount(Lcom/android/uiautomator/core/UiSelector;)I
    .locals 3
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 140
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 143
    .local v0, "patternSelector":Lcom/android/uiautomator/core/UiSelector;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/uiautomator/core/QueryController;->getPatternCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v1

    return v1
.end method
