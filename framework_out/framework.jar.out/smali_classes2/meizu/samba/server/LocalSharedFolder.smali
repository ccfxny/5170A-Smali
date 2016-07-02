.class public Lmeizu/samba/server/LocalSharedFolder;
.super Ljava/lang/Object;
.source "LocalSharedFolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/samba/server/LocalSharedFolder$SharedMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmeizu/samba/server/LocalSharedFolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public descriptions:[Ljava/lang/String;

.field public mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

.field public password:Ljava/lang/String;

.field public paths:[Ljava/lang/String;

.field public user:Ljava/lang/String;

.field public writable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lmeizu/samba/server/LocalSharedFolder$1;

    invoke-direct {v0}, Lmeizu/samba/server/LocalSharedFolder$1;-><init>()V

    sput-object v0, Lmeizu/samba/server/LocalSharedFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->descriptions:[Ljava/lang/String;

    .line 47
    sget-object v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_USER:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    iput-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->password:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Lmeizu/samba/server/LocalSharedFolder$SharedMode;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "dess"    # [Ljava/lang/String;
    .param p3, "mode"    # Lmeizu/samba/server/LocalSharedFolder$SharedMode;
    .param p4, "writable"    # Z
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folder cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folder cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    if-nez p5, :cond_4

    .line 60
    const-string p5, ""

    .line 61
    :cond_4
    if-nez p6, :cond_5

    .line 62
    const-string p6, ""

    .line 63
    :cond_5
    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 66
    sget-object p3, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_SHARE:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    .line 69
    :cond_6
    iput-object p1, p0, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lmeizu/samba/server/LocalSharedFolder;->descriptions:[Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    .line 72
    iput-boolean p4, p0, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    .line 73
    iput-object p5, p0, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lmeizu/samba/server/LocalSharedFolder;->password:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 82
    .local v0, "none":Ljava/lang/String;
    const-string v2, "paths: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", descriptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lmeizu/samba/server/LocalSharedFolder;->descriptions:[Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", writable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmeizu/samba/server/LocalSharedFolder;->password:Ljava/lang/String;

    if-nez v3, :cond_4

    .end local v0    # "none":Ljava/lang/String;
    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 82
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmeizu/samba/server/LocalSharedFolder;->descriptions:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->password:Ljava/lang/String;

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->descriptions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    invoke-virtual {v0}, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-boolean v0, p0, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lmeizu/samba/server/LocalSharedFolder;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
