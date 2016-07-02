.class Lcom/android/commands/content/Content$CallCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallCommand"
.end annotation


# instance fields
.field final mArg:Ljava/lang/String;

.field mExtras:Landroid/os/Bundle;

.field final mMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 462
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    .line 466
    iput-object p3, p0, Lcom/android/commands/content/Content$CallCommand;->mMethod:Ljava/lang/String;

    .line 467
    iput-object p4, p0, Lcom/android/commands/content/Content$CallCommand;->mArg:Ljava/lang/String;

    .line 468
    if-eqz p5, :cond_6

    .line 469
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    .line 470
    invoke-virtual {p5}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 471
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 472
    .local v2, "val":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 473
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 475
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Float;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 476
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_3

    .line 477
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Double;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 478
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 479
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 480
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_4
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 481
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 482
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_5
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 487
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/content/Content$CallCommand;->mArg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 492
    .local v0, "result":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    .line 493
    .local v1, "size":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    return-void
.end method
