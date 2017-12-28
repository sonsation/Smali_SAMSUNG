.class Lcom/samsung/android/sdk/bixby/TestInformationReader;
.super Ljava/lang/Object;
.source "TestInformationReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTestParams(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .param p0, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 25
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v3, v5

    .line 36
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v3

    .line 30
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v5

    .line 31
    goto :goto_1
.end method

.method public static read(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "tiString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "jObj":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 44
    .local v3, "len":I
    if-nez v3, :cond_1

    move-object v7, v9

    .line 70
    .end local v1    # "jObj":Lorg/json/JSONArray;
    .end local v3    # "len":I
    :cond_0
    :goto_0
    return-object v7

    .line 48
    .restart local v1    # "jObj":Lorg/json/JSONArray;
    .restart local v3    # "len":I
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v7, "tiList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;>;"
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 52
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "type"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 54
    const-string v10, "type"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "type":Ljava/lang/String;
    const-string v10, "content"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 60
    const-string v10, "content"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sdk/bixby/TestInformationReader;->getTestParams(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    .line 65
    .local v5, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;

    invoke-direct {v6, v8, v5}, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    .local v6, "ti":Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v5    # "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "ti":Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;
    .end local v8    # "type":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 69
    .end local v1    # "jObj":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "len":I
    .end local v4    # "n":I
    .end local v7    # "tiList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v7, v9

    .line 70
    goto :goto_0
.end method
