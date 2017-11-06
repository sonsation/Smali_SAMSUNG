.class public Lcom/samsung/android/sdk/ppmt/content/CardAction;
.super Ljava/lang/Object;
.source "CardAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAction:Ljava/lang/String;

.field public mAppParam:Ljava/lang/String;

.field public mClassName:Ljava/lang/String;

.field public mComponent:I

.field public mData:Ljava/lang/String;

.field public mExtra:Landroid/os/Bundle;

.field public mPackageName:Ljava/lang/String;

.field public mReferrer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mType:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "marketingType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 204
    const-string v2, "app"

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 209
    :cond_1
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    :goto_1
    move v0, v1

    .line 237
    goto :goto_0

    .line 214
    :cond_3
    const-string v2, "intent"

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 216
    goto :goto_0

    .line 219
    :cond_4
    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mComponent:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 226
    :cond_5
    const-string v2, "2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    const-string v2, "ignore"

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const-string v2, "api"

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValid(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .param p1, "marketingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/content/CardAction;>;"
    const/4 v2, 0x0

    .line 192
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 193
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .line 194
    .local v0, "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    .end local v0    # "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    .line 198
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static parse(Landroid/os/Bundle;)Lcom/samsung/android/sdk/ppmt/content/CardAction;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 60
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/content/CardAction;-><init>()V

    .line 61
    .local v0, "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "url"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    .line 63
    const-string v1, "pkg"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    .line 64
    const-string v1, "appParam"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAppParam:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "ref"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mReferrer:Ljava/util/ArrayList;

    .line 66
    const-string v1, "action"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAction:Ljava/lang/String;

    .line 67
    const-string v1, "comp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mComponent:I

    .line 68
    const-string v1, "data"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mData:Ljava/lang/String;

    .line 69
    const-string v1, "cls"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mClassName:Ljava/lang/String;

    .line 70
    const-string v1, "extra"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mExtra:Landroid/os/Bundle;

    .line 72
    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, "cardActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/content/CardAction;>;"
    const-string v7, "action"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 33
    .local v4, "ja":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 34
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 36
    .local v6, "jo_action":Lorg/json/JSONObject;
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/content/CardAction;-><init>()V

    .line 37
    .local v0, "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    .line 38
    const-string v7, "pkg"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    .line 39
    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    .line 40
    const-string v7, "appParam"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAppParam:Ljava/lang/String;

    .line 41
    const-string/jumbo v7, "ref"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 42
    .local v5, "ja_ref":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mReferrer:Ljava/util/ArrayList;

    .line 44
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 45
    iget-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mReferrer:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    .end local v3    # "j":I
    :cond_0
    const-string v7, "action"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAction:Ljava/lang/String;

    .line 49
    const-string v7, "comp"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mComponent:I

    .line 50
    const-string v7, "data"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mData:Ljava/lang/String;

    .line 51
    const-string v7, "cls"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mClassName:Ljava/lang/String;

    .line 52
    invoke-static {v6}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parseIntentExtras(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mExtra:Landroid/os/Bundle;

    .line 54
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 56
    .end local v0    # "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    .end local v5    # "ja_ref":Lorg/json/JSONArray;
    .end local v6    # "jo_action":Lorg/json/JSONObject;
    :cond_1
    return-object v1
.end method

.method private static parseIntentExtras(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 9
    .param p0, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "extra"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 94
    .local v3, "ja_extras":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 95
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 97
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 98
    .local v1, "extra":Lorg/json/JSONArray;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 96
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :pswitch_0
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 104
    :pswitch_1
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 107
    :pswitch_2
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parseToIntArray(Lorg/json/JSONArray;)[I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 110
    :pswitch_3
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parseToIntArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 113
    :pswitch_4
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 116
    :pswitch_5
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :pswitch_6
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parseToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :pswitch_7
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parseToStringArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 125
    :pswitch_8
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 128
    :pswitch_9
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    double-to-float v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 131
    :pswitch_a
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_1

    .line 136
    .end local v1    # "extra":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static parseToIntArray(Lorg/json/JSONArray;)[I
    .locals 4
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 167
    :cond_0
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Invalid JSONArray"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v1, v2, [I

    .line 171
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 172
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    return-object v1
.end method

.method private static parseToIntArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 141
    :cond_0
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Invalid JSONArray"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 146
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    return-object v1
.end method

.method private static parseToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 179
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :cond_0
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Invalid JSONArray"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 184
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 185
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    return-object v1
.end method

.method private static parseToStringArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Invalid JSONArray"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 159
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getReferrerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mReferrer:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 242
    const-string/jumbo v0, "|"

    .line 243
    .local v0, "PARAMS_DELIMITER":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 244
    .local v3, "referrerStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mReferrer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 245
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mReferrer:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "key":Ljava/lang/String;
    const-string v4, "mid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] referrer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v0    # "PARAMS_DELIMITER":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "referrerStr":Ljava/lang/String;
    :goto_1
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "appParam"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAppParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "ref"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mReferrer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 82
    const-string v1, "action"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "comp"

    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mComponent:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v1, "data"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "cls"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "extra"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method
