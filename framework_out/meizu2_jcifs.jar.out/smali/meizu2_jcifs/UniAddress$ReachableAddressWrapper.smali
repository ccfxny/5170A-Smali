.class Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;
.super Ljava/lang/Object;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReachableAddressWrapper"
.end annotation


# instance fields
.field public addr:Lmeizu2_jcifs/UniAddress;


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/UniAddress;)V
    .locals 0
    .param p1, "addr"    # Lmeizu2_jcifs/UniAddress;

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    .line 245
    return-void
.end method
