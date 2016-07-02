.class Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
.super Ljava/lang/Object;
.source "WifiApConnectRecordStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConnectRecordStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApConnectRecordNode"
.end annotation


# instance fields
.field public connectTimes:I

.field public keyMgmt:Ljava/lang/String;

.field public lastConnectDate:Ljava/util/Date;

.field public score:I

.field public ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiApConnectRecordStore;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 89
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->this$0:Lcom/android/server/wifi/WifiApConnectRecordStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    .line 92
    iput v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    .line 93
    iput v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 94
    return-void
.end method


# virtual methods
.method public isInitAllFiled()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->this$0:Lcom/android/server/wifi/WifiApConnectRecordStore;

    # getter for: Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConnectRecordStore;->access$000(Lcom/android/server/wifi/WifiApConnectRecordStore;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
