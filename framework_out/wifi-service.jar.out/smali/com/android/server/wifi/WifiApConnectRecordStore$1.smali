.class Lcom/android/server/wifi/WifiApConnectRecordStore$1;
.super Ljava/lang/Object;
.source "WifiApConnectRecordStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConnectRecordStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConnectRecordStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConnectRecordStore$1;->this$0:Lcom/android/server/wifi/WifiApConnectRecordStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;)I
    .locals 2
    .param p1, "n1"    # Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .param p2, "n2"    # Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .prologue
    .line 435
    iget-object v0, p2, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    .line 437
    :cond_0
    iget-object v0, p2, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    const/4 v0, -0x1

    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 433
    check-cast p1, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiApConnectRecordStore$1;->compare(Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;)I

    move-result v0

    return v0
.end method
