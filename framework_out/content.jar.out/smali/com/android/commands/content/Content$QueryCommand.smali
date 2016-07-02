.class Lcom/android/commands/content/Content$QueryCommand;
.super Lcom/android/commands/content/Content$DeleteCommand;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryCommand"
.end annotation


# instance fields
.field final mProjection:[Ljava/lang/String;

.field final mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-direct {p0, p1, p2, p4}, Lcom/android/commands/content/Content$DeleteCommand;-><init>(Landroid/net/Uri;ILjava/lang/String;)V

    .line 529
    iput-object p3, p0, Lcom/android/commands/content/Content$QueryCommand;->mProjection:[Ljava/lang/String;

    .line 530
    iput-object p5, p0, Lcom/android/commands/content/Content$QueryCommand;->mSortOrder:Ljava/lang/String;

    .line 531
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 19
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 535
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/content/Content$QueryCommand;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/commands/content/Content$QueryCommand;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/commands/content/Content$QueryCommand;->mWhere:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/commands/content/Content$QueryCommand;->mSortOrder:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v15

    .line 536
    .local v15, "cursor":Landroid/database/Cursor;
    if-nez v15, :cond_0

    .line 537
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "No result found."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 584
    :goto_0
    return-void

    .line 541
    :cond_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 542
    const/16 v17, 0x0

    .line 543
    .local v17, "rowIndex":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .local v10, "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 546
    const-string v2, "Row: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    add-int/lit8 v17, v17, 0x1

    .line 548
    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    move-result v11

    .line 549
    .local v11, "columnCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v11, :cond_3

    .line 550
    if-lez v16, :cond_2

    .line 551
    const-string v2, ", "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_2
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v13

    .line 554
    .local v13, "columnName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 555
    .local v14, "columnValue":Ljava/lang/String;
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 556
    .local v12, "columnIndex":I
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getType(I)I

    move-result v18

    .line 557
    .local v18, "type":I
    packed-switch v18, :pswitch_data_0

    .line 574
    :goto_2
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 559
    :pswitch_0
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    .line 560
    goto :goto_2

    .line 562
    :pswitch_1
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 563
    goto :goto_2

    .line 565
    :pswitch_2
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 566
    goto :goto_2

    .line 568
    :pswitch_3
    const-string v14, "BLOB"

    .line 569
    goto :goto_2

    .line 571
    :pswitch_4
    const-string v14, "NULL"

    goto :goto_2

    .line 576
    .end local v12    # "columnIndex":I
    .end local v13    # "columnName":Ljava/lang/String;
    .end local v14    # "columnValue":Ljava/lang/String;
    .end local v18    # "type":I
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 577
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 582
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "columnCount":I
    .end local v16    # "i":I
    .end local v17    # "rowIndex":I
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 579
    :cond_4
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "No result found."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 582
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
