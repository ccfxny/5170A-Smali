.class Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

.field final synthetic val$defaultRegion:Ljava/lang/String;

.field final synthetic val$leniency:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field final synthetic val$maxTries:J

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 1

    .prologue
    .line 2716
    iput-object p1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->this$0:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    iput-object p2, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->val$text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->val$defaultRegion:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->val$leniency:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iput-wide p5, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->val$maxTries:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2718
    new-instance v1, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;

    iget-object v2, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->this$0:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->val$text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->val$defaultRegion:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->val$leniency:Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-wide v6, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;->val$maxTries:J

    invoke-direct/range {v1 .. v7}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;-><init>(Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v1
.end method
