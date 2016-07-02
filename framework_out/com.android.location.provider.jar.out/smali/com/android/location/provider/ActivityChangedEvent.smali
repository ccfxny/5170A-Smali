.class public Lcom/android/location/provider/ActivityChangedEvent;
.super Ljava/lang/Object;
.source "ActivityChangedEvent.java"


# instance fields
.field private final mActivityRecognitionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "activityRecognitionEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'activityRecognitionEvents\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getActivityRecognitionEvents()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[ ActivityChangedEvent:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/location/provider/ActivityRecognitionEvent;

    .line 49
    .local v1, "event":Lcom/android/location/provider/ActivityRecognitionEvent;
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Lcom/android/location/provider/ActivityRecognitionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    .end local v1    # "event":Lcom/android/location/provider/ActivityRecognitionEvent;
    :cond_0
    const-string v3, "\n]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
