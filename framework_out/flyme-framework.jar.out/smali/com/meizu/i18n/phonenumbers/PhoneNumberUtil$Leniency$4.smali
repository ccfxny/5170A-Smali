.class final enum Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;
.super Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/meizu/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .param p1, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "util"    # Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 528
    invoke-virtual {p3, p1}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;->containsMoreThanOneSlash(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p3}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    :cond_0
    const/4 v0, 0x0

    .line 534
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$4$1;

    invoke-direct {v0, p0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$4$1;-><init>(Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;)V

    invoke-static {p1, p2, p3, v0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher;->checkNumberGroupingIsValid(Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/meizu/i18n/phonenumbers/PhoneNumberUtil;Lcom/meizu/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z

    move-result v0

    goto :goto_0
.end method
