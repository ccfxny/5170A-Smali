.class Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferReturnCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/commands/monkey/MonkeySourceNetwork$1;

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 10
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
    const/4 v9, 0x3

    .line 409
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_1

    .line 410
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 412
    .local v1, "event":Ljava/lang/String;
    const-string v5, "screenchange"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    const/4 v2, 0x1

    .line 417
    .local v2, "eventId":I
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 418
    .local v6, "timeout":J
    # getter for: Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->access$200()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    .line 419
    .local v0, "deferredCommand":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    if-eqz v0, :cond_1

    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 421
    .local v3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v3, p2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v4

    .line 422
    .local v4, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    new-instance v5, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    invoke-direct {v5, v2, v4, v6, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;-><init>(ILcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;J)V

    # setter for: Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
    invoke-static {v5}, Lcom/android/commands/monkey/MonkeySourceNetwork;->access$302(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;)Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    .line 423
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 426
    .end local v0    # "deferredCommand":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "eventId":I
    .end local v3    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .end local v6    # "timeout":J
    :goto_0
    return-object v5

    .line 415
    .restart local v1    # "event":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_0

    .line 426
    .end local v1    # "event":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_0
.end method
