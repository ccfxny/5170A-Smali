.class public Lcom/android/location/provider/ActivityRecognitionEvent;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"


# instance fields
.field private final mActivity:Ljava/lang/String;

.field private final mEventType:I

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    .line 30
    iput-wide p3, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    .line 31
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 48
    iget v1, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    packed-switch v1, :pswitch_data_0

    .line 59
    const-string v0, "<Invalid>"

    .line 63
    .local v0, "eventString":Ljava/lang/String;
    :goto_0
    const-string v1, "Activity=\'%s\', EventType=%s(%s), TimestampNs=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 50
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Enter"

    .line 51
    .restart local v0    # "eventString":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Exit"

    .line 54
    .restart local v0    # "eventString":Ljava/lang/String;
    goto :goto_0

    .line 56
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "FlushComplete"

    .line 57
    .restart local v0    # "eventString":Ljava/lang/String;
    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
