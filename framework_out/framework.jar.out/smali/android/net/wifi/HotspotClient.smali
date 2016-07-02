.class public Landroid/net/wifi/HotspotClient;
.super Ljava/lang/Object;
.source "HotspotClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public isBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Landroid/net/wifi/HotspotClient$1;

    invoke-direct {v0}, Landroid/net/wifi/HotspotClient$1;-><init>()V

    sput-object v0, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/HotspotClient;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/HotspotClient;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p1, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 81
    iget-boolean v0, p1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 82
    iget-object v0, p1, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    .line 84
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "Name"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 62
    iput-object p1, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "blocked"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 53
    iput-object p1, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 54
    iput-boolean p2, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 55
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "blocked"    # Z
    .param p3, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 70
    iput-object p1, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 71
    iput-boolean p2, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, " isBlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, " deviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
