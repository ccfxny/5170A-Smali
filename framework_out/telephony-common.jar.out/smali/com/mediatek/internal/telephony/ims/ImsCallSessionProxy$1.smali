.class Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleImsConfCallMessage(IILjava/lang/String;)V
    .locals 20
    .param p1, "len"    # I
    .param p2, "callId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 518
    if-eqz p3, :cond_0

    :try_start_0
    const-string v17, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 519
    :cond_0
    const-string v17, "ImsCallSessionProxy"

    const-string v18, "Failed to handleImsConfCallMessage due to data is empty"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    const-string v17, "ImsCallSessionProxy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVoLteConfCallMessage, data length = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "callId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v6, "/sdcard/conferenceCall.xml"

    .line 529
    .local v6, "file":Ljava/lang/String;
    new-instance v11, Ljava/io/OutputStreamWriter;

    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 530
    .local v11, "out":Ljava/io/OutputStreamWriter;
    const/16 v17, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 531
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V

    .line 534
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 535
    .local v10, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 536
    .local v5, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v12

    .line 537
    .local v12, "saxParse":Ljavax/xml/parsers/SAXParser;
    new-instance v16, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;

    invoke-direct/range {v16 .. v16}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;-><init>()V

    .line 538
    .local v16, "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    if-nez v16, :cond_3

    .line 539
    const-string v17, "ImsCallSessionProxy"

    const-string v18, "can\'t create xmlData object"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    .end local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "inStream":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStreamWriter;
    .end local v12    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .end local v16    # "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    :catch_0
    move-exception v4

    .line 602
    .local v4, "e":Ljava/lang/Exception;
    const-string v17, "ImsCallSessionProxy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to handle volte conference call message !!!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 542
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "inStream":Ljava/io/InputStream;
    .restart local v11    # "out":Ljava/io/OutputStreamWriter;
    .restart local v12    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .restart local v16    # "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v12, v10, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 545
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v15

    .line 546
    .local v15, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;>;"
    const/4 v7, 0x0

    .line 547
    .local v7, "i":I
    new-instance v9, Lcom/android/ims/ImsConferenceState;

    invoke-direct {v9}, Lcom/android/ims/ImsConferenceState;-><init>()V

    .line 550
    .local v9, "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .line 551
    .local v14, "u":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    add-int/lit8 v7, v7, 0x1

    .line 552
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v3, "confInfo":Landroid/os/Bundle;
    const-string v17, "user"

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v17, "display-text"

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getDisplayText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v17, "endpoint"

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v13

    .line 558
    .local v13, "state":Ljava/lang/String;
    const-string v17, "pending"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 559
    const-string v17, "status"

    const-string v18, "pending"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_2
    iget-object v0, v9, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 561
    :cond_4
    const-string v17, "dialing-out"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 562
    const-string v17, "status"

    const-string v18, "dialing-out"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 564
    :cond_5
    const-string v17, "dialing-in"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 565
    const-string v17, "status"

    const-string v18, "dialing-in"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 567
    :cond_6
    const-string v17, "alerting"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 568
    const-string v17, "status"

    const-string v18, "alerting"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 570
    :cond_7
    const-string v17, "on-hold"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 571
    const-string v17, "status"

    const-string v18, "on-hold"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 573
    :cond_8
    const-string v17, "connected"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 574
    const-string v17, "status"

    const-string v18, "connected"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 576
    :cond_9
    const-string v17, "disconnecting"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 577
    const-string v17, "status"

    const-string v18, "disconnecting"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 579
    :cond_a
    const-string v17, "disconnected"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 580
    const-string v17, "status"

    const-string v18, "disconnected"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 582
    :cond_b
    const-string v17, "muted-via-focus"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 583
    const-string v17, "status"

    const-string v18, "muted-via-focus"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 586
    :cond_c
    const-string v17, "status"

    const-string v18, "connect-fail"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 592
    .end local v3    # "confInfo":Landroid/os/Bundle;
    .end local v13    # "state":Ljava/lang/String;
    .end local v14    # "u":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    if-eqz v17, :cond_1

    .line 594
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 596
    :catch_1
    move-exception v4

    .line 597
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v17, "ImsCallSessionProxy"

    const-string v18, "RemoteException occurs when callSessionConferenceStateUpdated()"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 608
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 615
    const-string v3, "android.intent.action.ims.conference"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    const-string v3, "call.id"

    const/4 v4, 0x3

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 618
    .local v1, "callId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 619
    const-string v3, "message.content"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->handleImsConfCallMessage(IILjava/lang/String;)V

    .line 629
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const-string v3, "ImsCallSessionProxy"

    const-string v4, "can\'t handle conference message since no call ID. Abnormal Case"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
