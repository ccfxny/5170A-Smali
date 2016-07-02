.class public final Lcom/android/location/provider/ActivityRecognitionProvider;
.super Ljava/lang/Object;
.source "ActivityRecognitionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/ActivityRecognitionProvider$1;,
        Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;,
        Lcom/android/location/provider/ActivityRecognitionProvider$Sink;
    }
.end annotation


# static fields
.field public static final ACTIVITY_IN_VEHICLE:Ljava/lang/String; = "android.activity_recognition.in_vehicle"

.field public static final ACTIVITY_ON_BICYCLE:Ljava/lang/String; = "android.activity_recognition.on_bicycle"

.field public static final ACTIVITY_RUNNING:Ljava/lang/String; = "android.activity_recognition.running"

.field public static final ACTIVITY_STILL:Ljava/lang/String; = "android.activity_recognition.still"

.field public static final ACTIVITY_TILTING:Ljava/lang/String; = "android.activity_recognition.tilting"

.field public static final ACTIVITY_WALKING:Ljava/lang/String; = "android.activity_recognition.walking"

.field public static final EVENT_TYPE_ENTER:I = 0x1

.field public static final EVENT_TYPE_EXIT:I = 0x2

.field public static final EVENT_TYPE_FLUSH_COMPLETE:I


# instance fields
.field private final mService:Landroid/hardware/location/IActivityRecognitionHardware;

.field private final mSinkSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/location/provider/ActivityRecognitionProvider$Sink;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinkTransport:Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;


# direct methods
.method public constructor <init>(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 2
    .param p1, "service"    # Landroid/hardware/location/IActivityRecognitionHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    .line 35
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;-><init>(Lcom/android/location/provider/ActivityRecognitionProvider;Lcom/android/location/provider/ActivityRecognitionProvider$1;)V

    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkTransport:Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;

    .line 61
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    .line 63
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkTransport:Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;

    invoke-interface {v0, v1}, Landroid/hardware/location/IActivityRecognitionHardware;->registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/location/provider/ActivityRecognitionProvider;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IActivityRecognitionHardware;->disableActivityEvent(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/location/IActivityRecognitionHardware;->enableActivityEvent(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public flush()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0}, Landroid/hardware/location/IActivityRecognitionHardware;->flush()Z

    move-result v0

    return v0
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0}, Landroid/hardware/location/IActivityRecognitionHardware;->getSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IActivityRecognitionHardware;->isActivitySupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerSink(Lcom/android/location/provider/ActivityRecognitionProvider$Sink;)V
    .locals 2
    .param p1, "sink"    # Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterSink(Lcom/android/location/provider/ActivityRecognitionProvider$Sink;)V
    .locals 2
    .param p1, "sink"    # Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
