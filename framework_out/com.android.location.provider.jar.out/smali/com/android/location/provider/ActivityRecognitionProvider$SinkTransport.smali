.class final Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;
.super Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;
.source "ActivityRecognitionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SinkTransport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProvider;


# direct methods
.method private constructor <init>(Lcom/android/location/provider/ActivityRecognitionProvider;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/location/provider/ActivityRecognitionProvider;Lcom/android/location/provider/ActivityRecognitionProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/location/provider/ActivityRecognitionProvider;
    .param p2, "x1"    # Lcom/android/location/provider/ActivityRecognitionProvider$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;-><init>(Lcom/android/location/provider/ActivityRecognitionProvider;)V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    .locals 10
    .param p1, "activityChangedEvent"    # Landroid/hardware/location/ActivityChangedEvent;

    .prologue
    .line 108
    iget-object v6, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    # getter for: Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/location/provider/ActivityRecognitionProvider;->access$100(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 109
    :try_start_0
    iget-object v6, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    # getter for: Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/location/provider/ActivityRecognitionProvider;->access$100(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    monitor-exit v7

    .line 132
    :cond_0
    return-void

    .line 113
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    # getter for: Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/location/provider/ActivityRecognitionProvider;->access$100(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v5, "sinks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/location/provider/ActivityRecognitionProvider$Sink;>;"
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "gmsEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    invoke-virtual {p1}, Landroid/hardware/location/ActivityChangedEvent;->getActivityRecognitionEvents()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ActivityRecognitionEvent;

    .line 121
    .local v0, "event":Landroid/hardware/location/ActivityRecognitionEvent;
    new-instance v1, Lcom/android/location/provider/ActivityRecognitionEvent;

    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionEvent;->getActivity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionEvent;->getEventType()I

    move-result v7

    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionEvent;->getTimestampNs()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/location/provider/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    .line 125
    .local v1, "gmsEvent":Lcom/android/location/provider/ActivityRecognitionEvent;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "event":Landroid/hardware/location/ActivityRecognitionEvent;
    .end local v1    # "gmsEvent":Lcom/android/location/provider/ActivityRecognitionEvent;
    .end local v2    # "gmsEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sinks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/location/provider/ActivityRecognitionProvider$Sink;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 127
    .restart local v2    # "gmsEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sinks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/location/provider/ActivityRecognitionProvider$Sink;>;"
    :cond_2
    new-instance v1, Lcom/android/location/provider/ActivityChangedEvent;

    invoke-direct {v1, v2}, Lcom/android/location/provider/ActivityChangedEvent;-><init>(Ljava/util/List;)V

    .line 129
    .local v1, "gmsEvent":Lcom/android/location/provider/ActivityChangedEvent;
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    .line 130
    .local v4, "sink":Lcom/android/location/provider/ActivityRecognitionProvider$Sink;
    invoke-interface {v4, v1}, Lcom/android/location/provider/ActivityRecognitionProvider$Sink;->onActivityChanged(Lcom/android/location/provider/ActivityChangedEvent;)V

    goto :goto_1
.end method
