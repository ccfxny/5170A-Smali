.class public Lorg/gsma/joyn/contacts/JoynContact;
.super Ljava/lang/Object;
.source "JoynContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/contacts/JoynContact;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "TAPI-JoynContact"


# instance fields
.field private capabilities:Lorg/gsma/joyn/capability/Capabilities;

.field private contactId:Ljava/lang/String;

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lorg/gsma/joyn/contacts/JoynContact$1;

    invoke-direct {v0}, Lorg/gsma/joyn/contacts/JoynContact$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/contacts/JoynContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v4, p0, Lorg/gsma/joyn/contacts/JoynContact;->capabilities:Lorg/gsma/joyn/capability/Capabilities;

    .line 42
    iput-object v4, p0, Lorg/gsma/joyn/contacts/JoynContact;->contactId:Ljava/lang/String;

    .line 47
    iput-boolean v3, p0, Lorg/gsma/joyn/contacts/JoynContact;->registered:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/gsma/joyn/contacts/JoynContact;->contactId:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/gsma/joyn/contacts/JoynContact;->registered:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 75
    .local v0, "flag":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/gsma/joyn/capability/Capabilities;

    iput-object v1, p0, Lorg/gsma/joyn/contacts/JoynContact;->capabilities:Lorg/gsma/joyn/capability/Capabilities;

    .line 80
    :goto_2
    return-void

    .end local v0    # "flag":Z
    :cond_0
    move v1, v3

    .line 73
    goto :goto_0

    :cond_1
    move v0, v3

    .line 74
    goto :goto_1

    .line 78
    .restart local v0    # "flag":Z
    :cond_2
    iput-object v4, p0, Lorg/gsma/joyn/contacts/JoynContact;->capabilities:Lorg/gsma/joyn/capability/Capabilities;

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/gsma/joyn/capability/Capabilities;)V
    .locals 3
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "registered"    # Z
    .param p3, "capabilities"    # Lorg/gsma/joyn/capability/Capabilities;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->capabilities:Lorg/gsma/joyn/capability/Capabilities;

    .line 42
    iput-object v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->contactId:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->registered:Z

    .line 59
    const-string v0, "TAPI-JoynContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JoynContact entrycontactId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lorg/gsma/joyn/contacts/JoynContact;->contactId:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Lorg/gsma/joyn/contacts/JoynContact;->registered:Z

    .line 62
    iput-object p3, p0, Lorg/gsma/joyn/contacts/JoynContact;->capabilities:Lorg/gsma/joyn/capability/Capabilities;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilities()Lorg/gsma/joyn/capability/Capabilities;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->capabilities:Lorg/gsma/joyn/capability/Capabilities;

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->registered:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->contactId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->registered:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->capabilities:Lorg/gsma/joyn/capability/Capabilities;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lorg/gsma/joyn/contacts/JoynContact;->capabilities:Lorg/gsma/joyn/capability/Capabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 109
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
