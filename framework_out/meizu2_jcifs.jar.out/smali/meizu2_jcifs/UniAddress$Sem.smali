.class Lmeizu2_jcifs/UniAddress$Sem;
.super Ljava/lang/Object;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sem"
.end annotation


# instance fields
.field count:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lmeizu2_jcifs/UniAddress$Sem;->count:I

    .line 126
    return-void
.end method
