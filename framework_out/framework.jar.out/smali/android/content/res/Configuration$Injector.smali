.class Landroid/content/res/Configuration$Injector;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "source"    # Landroid/os/Parcel;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1893
    const-class v0, Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    iput-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    .line 1894
    return-void
.end method

.method public static readXmlAttrs(Landroid/content/res/Configuration;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "configOut"    # Landroid/content/res/Configuration;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x0

    .line 1901
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    const-string/jumbo v1, "themeChanged"

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 1903
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    const-string v1, "fontChanged"

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 1905
    return-void
.end method

.method public static writeToParcel(Landroid/os/Parcel;ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1897
    iget-object v0, p2, Landroid/content/res/Configuration;->configurationExt:Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1898
    return-void
.end method

.method public static writeXmlAttrs(Landroid/content/res/Configuration;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1908
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-eqz v0, :cond_0

    .line 1909
    const-string/jumbo v0, "themeChanged"

    iget-object v1, p0, Landroid/content/res/Configuration;->configurationExt:Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1911
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-eqz v0, :cond_1

    .line 1912
    const-string v0, "fontChanged"

    iget-object v1, p0, Landroid/content/res/Configuration;->configurationExt:Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Lframeworks/base/core/java/android/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1914
    :cond_1
    return-void
.end method
