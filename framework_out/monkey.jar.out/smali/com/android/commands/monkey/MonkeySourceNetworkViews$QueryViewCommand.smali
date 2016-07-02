.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryViewCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 9
    .param p2, "queue"    # Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .prologue
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_4

    .line 200
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    .local v3, "idType":Ljava/lang/String;
    const-string v6, "viewid"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    const/4 v6, 0x2

    :try_start_0
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    # invokes: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v6}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$200(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 207
    .local v4, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 208
    .local v5, "viewQuery":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p1, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/commands/monkey/MonkeyViewException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-nez v4, :cond_2

    .line 224
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v7, "Node with given ID does not exist"

    invoke-direct {v6, v8, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    .line 233
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "idType":Ljava/lang/String;
    .end local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "viewQuery":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 209
    .restart local v3    # "idType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Lcom/android/commands/monkey/MonkeyViewException;
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyViewException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_1

    .line 212
    .end local v1    # "e":Lcom/android/commands/monkey/MonkeyViewException;
    :cond_0
    const-string v6, "accessibilityids"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    const/4 v6, 0x2

    :try_start_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    # invokes: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v6, v7}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$300(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 215
    .restart local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    .restart local v5    # "viewQuery":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p1, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 217
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "viewQuery":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_1

    .line 221
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-object v6, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_1

    .line 226
    .restart local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "viewQuery":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$400()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;

    .line 227
    .local v2, "getter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    if-eqz v2, :cond_3

    .line 228
    invoke-interface {v2, v4, v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v6

    goto :goto_1

    .line 230
    :cond_3
    sget-object v6, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_1

    .line 233
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "getter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    .end local v3    # "idType":Ljava/lang/String;
    .end local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "viewQuery":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_1
.end method
