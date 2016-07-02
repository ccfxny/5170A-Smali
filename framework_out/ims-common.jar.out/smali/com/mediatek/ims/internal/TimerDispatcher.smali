.class public Lcom/mediatek/ims/internal/TimerDispatcher;
.super Ljava/lang/Object;
.source "TimerDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field protected static final INTENT_VOLTE_TIMER_ALARM:Ljava/lang/String; = "com.android.internal.telephony.volte_timer_alarm"

.field private static final TAG:Ljava/lang/String; = "Timer-IMSA"

.field private static imsAdapt:Lcom/mediatek/ims/ImsAdapter;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/TimerDispatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v1, Lcom/mediatek/ims/internal/TimerDispatcher$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/TimerDispatcher$1;-><init>(Lcom/mediatek/ims/internal/TimerDispatcher;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/TimerDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/mediatek/ims/internal/TimerDispatcher;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/mediatek/ims/internal/TimerDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 38
    const-string v1, "TimerDispatcher()"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/mediatek/ims/internal/TimerDispatcher;->imsAdapt:Lcom/mediatek/ims/ImsAdapter;

    if-nez v1, :cond_0

    .line 41
    const-string v1, "ImsAdapter.getInstance"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->getInstance()Lcom/mediatek/ims/ImsAdapter;

    move-result-object v1

    sput-object v1, Lcom/mediatek/ims/internal/TimerDispatcher;->imsAdapt:Lcom/mediatek/ims/ImsAdapter;

    .line 45
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.volte_timer_alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/mediatek/ims/internal/TimerDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/internal/TimerDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/TimerDispatcher;III)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/TimerDispatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/TimerDispatcher;->sendResponse(III)V

    return-void
.end method

.method private sendResponse(III)V
    .locals 4
    .param p1, "request_id"    # I
    .param p2, "timer_id"    # I
    .param p3, "user_data"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v1

    .line 61
    .local v1, "phone_id":I
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-direct {v0, v1, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 64
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 70
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 73
    iget-object v2, p0, Lcom/mediatek/ims/internal/TimerDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send event, request_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timer_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public disableRequest()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "disableRequest()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public enableRequest()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "enableRequest()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "Timer-IMSA"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 18
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 108
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v7

    .line 109
    .local v7, "request_id":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v9

    .line 110
    .local v9, "timer_id":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v8

    .line 111
    .local v8, "timeout":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v12

    .line 114
    .local v12, "user_data":I
    packed-switch v7, :pswitch_data_0

    .line 154
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown request: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 160
    .end local v7    # "request_id":I
    .end local v8    # "timeout":I
    .end local v9    # "timer_id":I
    .end local v12    # "user_data":I
    :goto_0
    return-void

    .line 116
    .restart local v7    # "request_id":I
    .restart local v8    # "timeout":I
    .restart local v9    # "timer_id":I
    .restart local v12    # "user_data":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/internal/TimerDispatcher;->mContext:Landroid/content/Context;

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 118
    .local v2, "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v13, "timer_id"

    invoke-virtual {v3, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v13, "user_data"

    invoke-virtual {v3, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.android.internal.telephony.volte_timer_alarm"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/internal/TimerDispatcher;->mContext:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v13, v12, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 126
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    mul-int/lit16 v13, v8, 0x3e8

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v10, v14, v16

    .line 127
    .local v10, "triggerAtTime":J
    const/4 v13, 0x2

    invoke-virtual {v2, v13, v10, v11, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 129
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "timer set, timer_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", user_data = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", timeout = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",triggerAtTime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "request_id":I
    .end local v8    # "timeout":I
    .end local v9    # "timer_id":I
    .end local v10    # "triggerAtTime":J
    .end local v12    # "user_data":I
    :catch_0
    move-exception v4

    .line 158
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "request_id":I
    .restart local v8    # "timeout":I
    .restart local v9    # "timer_id":I
    .restart local v12    # "user_data":I
    :pswitch_2
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 136
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v13, "timer_id"

    invoke-virtual {v3, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v13, "user_data"

    invoke-virtual {v3, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.android.internal.telephony.volte_timer_alarm"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/internal/TimerDispatcher;->mContext:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v13, v12, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 143
    .restart local v6    # "pi":Landroid/app/PendingIntent;
    if-eqz v6, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/internal/TimerDispatcher;->mContext:Landroid/content/Context;

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 145
    .restart local v2    # "am":Landroid/app/AlarmManager;
    invoke-virtual {v2, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 149
    .end local v2    # "am":Landroid/app/AlarmManager;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "timer cancel, timer_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", user_data = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x18830
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
