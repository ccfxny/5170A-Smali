.class Lcom/meizu/stats/UsageStatsUploader$2;
.super Ljava/lang/Object;
.source "UsageStatsUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/stats/UsageStatsUploader;->postRequestUmid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method constructor <init>(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$2;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 760
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 761
    .local v7, "uploadData":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader$2;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->parcelUmidInfo(Lorg/json/JSONObject;)V
    invoke-static {v9, v7}, Lcom/meizu/stats/UsageStatsUploader;->access$200(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;)V

    .line 763
    const/4 v4, 0x0

    .line 764
    .local v4, "response":Ljava/lang/String;
    const/4 v6, 0x0

    .line 765
    .local v6, "umid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 767
    .local v3, "mac":Ljava/lang/String;
    const/4 v0, 0x0

    .line 768
    .local v0, "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    const/4 v2, 0x0

    .line 769
    .local v2, "jsonByte":[B
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 770
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;

    .end local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    invoke-direct {v0, v2}, Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;-><init>([B)V

    .line 771
    .restart local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    const-string v9, "https://umid.orion.meizu.com/umid/generator"

    invoke-static {v9, v0}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 772
    if-nez v4, :cond_1

    .line 795
    .end local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    .end local v2    # "jsonByte":[B
    .end local v3    # "mac":Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    .end local v6    # "umid":Ljava/lang/String;
    .end local v7    # "uploadData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 775
    .restart local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    .restart local v2    # "jsonByte":[B
    .restart local v3    # "mac":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v6    # "umid":Ljava/lang/String;
    .restart local v7    # "uploadData":Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 776
    .local v5, "result":Lorg/json/JSONObject;
    const/16 v9, 0xc8

    const-string v10, "code"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 777
    const-string v9, "value"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 778
    .local v8, "value":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 779
    const-string v9, "umid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 780
    if-eqz v6, :cond_2

    .line 781
    sput-object v6, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    .line 782
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader$2;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/meizu/stats/UsageStatsUploader;->access$300(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    sget-object v10, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID:Ljava/lang/String;

    sget-object v11, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 784
    :cond_2
    const-string v9, "mac"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 785
    if-eqz v3, :cond_0

    .line 786
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader$2;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/meizu/stats/UsageStatsUploader;->access$300(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    sget-object v10, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID_MAC:Ljava/lang/String;

    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 790
    .end local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    .end local v2    # "jsonByte":[B
    .end local v3    # "mac":Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "result":Lorg/json/JSONObject;
    .end local v6    # "umid":Ljava/lang/String;
    .end local v7    # "uploadData":Lorg/json/JSONObject;
    .end local v8    # "value":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 792
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 793
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
