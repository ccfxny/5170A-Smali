.class public final Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/smil/SmilSimpleParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmilHead"
.end annotation


# instance fields
.field mHeadXml:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "headXml"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;->mHeadXml:Ljava/lang/String;

    .line 750
    iput-object p1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;->mHeadXml:Ljava/lang/String;

    .line 751
    return-void
.end method

.method private makeDefaultHead()V
    .locals 1

    .prologue
    .line 753
    const-string v0, "<head><layout><root-layout width=\"320px\" height=\"480px\" /></layout></head>"

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;->mHeadXml:Ljava/lang/String;

    .line 754
    return-void
.end method


# virtual methods
.method public makeSmilXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;->mHeadXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;->makeDefaultHead()V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;->mHeadXml:Ljava/lang/String;

    return-object v0
.end method
