.class final Lmeizu2_jcifs/netbios/NbtAddress$CacheEntry;
.super Ljava/lang/Object;
.source "NbtAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/netbios/NbtAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheEntry"
.end annotation


# instance fields
.field address:Lmeizu2_jcifs/netbios/NbtAddress;

.field expiration:J

.field hostName:Lmeizu2_jcifs/netbios/Name;


# direct methods
.method constructor <init>(Lmeizu2_jcifs/netbios/Name;Lmeizu2_jcifs/netbios/NbtAddress;J)V
    .locals 1
    .param p1, "hostName"    # Lmeizu2_jcifs/netbios/Name;
    .param p2, "address"    # Lmeizu2_jcifs/netbios/NbtAddress;
    .param p3, "expiration"    # J

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lmeizu2_jcifs/netbios/NbtAddress$CacheEntry;->hostName:Lmeizu2_jcifs/netbios/Name;

    .line 164
    iput-object p2, p0, Lmeizu2_jcifs/netbios/NbtAddress$CacheEntry;->address:Lmeizu2_jcifs/netbios/NbtAddress;

    .line 165
    iput-wide p3, p0, Lmeizu2_jcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    .line 166
    return-void
.end method
