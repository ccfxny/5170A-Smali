.class public Lmeizu/samba/client/RemoteSharedFolder;
.super Ljava/lang/Object;
.source "RemoteSharedFolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmeizu/samba/client/RemoteSharedFolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public domain:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lmeizu/samba/client/RemoteSharedFolder$1;

    invoke-direct {v0}, Lmeizu/samba/client/RemoteSharedFolder$1;-><init>()V

    sput-object v0, Lmeizu/samba/client/RemoteSharedFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->password:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string p1, ""

    .line 37
    :cond_0
    if-nez p2, :cond_1

    .line 38
    const-string p2, ""

    .line 39
    :cond_1
    if-nez p3, :cond_2

    .line 40
    const-string p3, ""

    .line 41
    :cond_2
    if-nez p4, :cond_3

    .line 42
    const-string p4, ""

    .line 44
    :cond_3
    iput-object p4, p0, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lmeizu/samba/client/RemoteSharedFolder;->password:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 55
    .local v0, "none":Ljava/lang/String;
    const-string v2, "path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    if-nez v3, :cond_2

    .end local v0    # "none":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 55
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void
.end method
