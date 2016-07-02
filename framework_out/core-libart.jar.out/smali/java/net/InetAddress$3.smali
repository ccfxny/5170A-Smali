.class final Ljava/net/InetAddress$3;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 940
    check-cast p1, Ljava/net/InetAddress;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/net/InetAddress;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/net/InetAddress$3;->compare(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .locals 2
    .param p1, "a1"    # Ljava/net/InetAddress;
    .param p2, "a2"    # Ljava/net/InetAddress;

    .prologue
    .line 942
    iget-object v0, p2, Ljava/net/InetAddress;->ipaddress:[B

    array-length v0, v0

    iget-object v1, p1, Ljava/net/InetAddress;->ipaddress:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    return v0
.end method
