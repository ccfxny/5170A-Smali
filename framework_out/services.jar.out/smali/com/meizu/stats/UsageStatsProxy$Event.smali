.class Lcom/meizu/stats/UsageStatsProxy$Event;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelNum:J

.field private flymeVersion:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private packageVersion:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private properties:Ljava/lang/Object;

.field private sessionid:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy$Event$1;

    invoke-direct {v0}, Lcom/meizu/stats/UsageStatsProxy$Event$1;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy$Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    if-nez p1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "propertiesStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->network:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->channelNum:J

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "time"    # J
    .param p5, "sessionid"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "page"    # Ljava/lang/String;
    .param p8, "properties"    # Ljava/lang/Object;
    .param p9, "flymeVersion"    # Ljava/lang/String;
    .param p10, "packageVersion"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 326
    iput p2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 327
    iput-wide p3, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 328
    iput-object p5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 329
    iput-object p6, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 330
    iput-object p7, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 331
    iput-object p8, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    .line 332
    iput-object p9, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    .line 333
    iput-object p10, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    .line 334
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelNum()J
    .locals 2

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->channelNum:J

    return-wide v0
.end method

.method public getFlymeVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertiesToJSONString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 389
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 390
    const-string v3, ""

    .line 410
    :goto_0
    return-object v3

    .line 392
    :cond_0
    const-string v3, ""

    .line 394
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 395
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 396
    .local v4, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 397
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 398
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 405
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "stringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "stringer":Lorg/json/JSONStringer;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 401
    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    goto :goto_0

    .line 403
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "stringer":Lorg/json/JSONStringer;
    :cond_2
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 407
    :catch_1
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSessionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    return v0
.end method

.method public setChannelNum(J)V
    .locals 1
    .param p1, "channelNum"    # J

    .prologue
    .line 434
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->channelNum:J

    .line 435
    return-void
.end method

.method public setFlymeVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "flymeVersion"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    .line 419
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1, "network"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->network:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setPackageVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageVersion"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setProperties(Ljava/lang/Object;)V
    .locals 0
    .param p1, "properties"    # Ljava/lang/Object;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    .line 415
    return-void
.end method

.method public setSessionid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionid"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 357
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 358
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 350
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 493
    if-nez p1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 496
    :cond_0
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 500
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->channelNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 506
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    goto :goto_1

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    goto :goto_3

    .line 503
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
