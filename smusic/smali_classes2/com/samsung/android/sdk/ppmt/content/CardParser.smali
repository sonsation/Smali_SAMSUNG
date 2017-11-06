.class public abstract Lcom/samsung/android/sdk/ppmt/content/CardParser;
.super Ljava/lang/Object;
.source "CardParser.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_CCTIME:I

.field private final DEFAULT_RANDOM_DISPLAY_RANGE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/CardParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->DEFAULT_RANDOM_DISPLAY_RANGE:I

    .line 28
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->DEFAULT_CCTIME:I

    return-void
.end method

.method private static getParser(Lcom/samsung/android/sdk/ppmt/content/Card;)Lcom/samsung/android/sdk/ppmt/content/CardParser;
    .locals 1
    .param p0, "card"    # Lcom/samsung/android/sdk/ppmt/content/Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .prologue
    .line 32
    instance-of v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;-><init>()V

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;-><init>()V

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;-><init>()V

    throw v0
.end method

.method private static getResourceUrlByLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "typename"    # Ljava/lang/String;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "localeList"    # Lorg/json/JSONArray;
    .param p4, "defaultUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 225
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 226
    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    const-string v6, "fail to get res url by locale. invalid params"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p4, v4

    .line 253
    .end local p4    # "defaultUrl":Ljava/lang/String;
    :goto_0
    return-object p4

    .line 230
    .restart local p4    # "defaultUrl":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "locale":Ljava/lang/String;
    const/4 v3, 0x0

    .line 233
    .local v3, "resource_locale":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 234
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    move-object v3, v2

    .line 240
    :cond_2
    if-nez v3, :cond_3

    .line 241
    invoke-static {p3}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->getSubLocale(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    .line 242
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "use sub locale : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_3
    if-nez v3, :cond_5

    .line 246
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get resource locale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". use default url"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to get res url by locale."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p4, v4

    .line 253
    goto :goto_0

    .line 233
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    :cond_5
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p4

    goto/16 :goto_0
.end method

.method private static getSubLocale(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "localeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "languageCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, "locale":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    .end local v1    # "locale":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSubLocale(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .param p0, "localeList"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "languageCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 215
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "locale":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    .end local v0    # "i":I
    .end local v2    # "locale":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 214
    .restart local v0    # "i":I
    .restart local v2    # "locale":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "i":I
    .end local v2    # "locale":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getTextResourceByLanguage(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "locale":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->getSubLocale(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "use sub locale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2

    .line 289
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 291
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v1    # "locale":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    const-string v3, "invalid text resource"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v2

    .line 293
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "locale":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "use default locale"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private isValid(Ljava/lang/String;IIJJII)Z
    .locals 4
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "displayTimeFrom"    # I
    .param p3, "displayTimeTo"    # I
    .param p4, "ttlFrom"    # J
    .param p6, "ttlTo"    # J
    .param p8, "randomRange"    # I
    .param p9, "cctime"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/16 v1, 0x18

    const/4 v0, 0x0

    .line 135
    if-ltz p2, :cond_0

    if-lt v1, p2, :cond_0

    if-ltz p3, :cond_0

    if-ge v1, p3, :cond_1

    .line 137
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] invalid displaytime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return v0

    .line 140
    :cond_1
    if-ne p2, p3, :cond_2

    .line 141
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] invalid displaytime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    cmp-long v1, p4, v2

    if-ltz v1, :cond_3

    cmp-long v1, p6, v2

    if-ltz v1, :cond_3

    cmp-long v1, p4, p6

    if-ltz v1, :cond_4

    .line 145
    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] invalid ttl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_4
    if-ltz p8, :cond_5

    const/16 v1, 0x5a0

    if-le p8, v1, :cond_6

    .line 149
    :cond_5
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] invalid random"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_6
    const/4 v1, -0x1

    if-ge p9, v1, :cond_7

    .line 153
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] invalid cctime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static parseAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;
    .locals 8
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "userdata"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "targetid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-gez p3, :cond_1

    .line 64
    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] invalid appdata"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v5

    .line 69
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "jo_userdata":Lorg/json/JSONObject;
    const-string v5, "marketingType"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "marketingType":Ljava/lang/String;
    invoke-static {p0, p1, v3, p3, p4}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCardByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 73
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->getParser(Lcom/samsung/android/sdk/ppmt/content/Card;)Lcom/samsung/android/sdk/ppmt/content/CardParser;

    move-result-object v4

    .line 74
    .local v4, "parser":Lcom/samsung/android/sdk/ppmt/content/CardParser;
    invoke-virtual {v4, v0, v2}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseUserData(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V

    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isSupportType()Z

    move-result v5

    if-nez v5, :cond_2

    .line 77
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .end local v2    # "jo_userdata":Lorg/json/JSONObject;
    .end local v3    # "marketingType":Ljava/lang/String;
    .end local v4    # "parser":Lcom/samsung/android/sdk/ppmt/content/CardParser;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] invalid appdata"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v5

    .line 80
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .restart local v2    # "jo_userdata":Lorg/json/JSONObject;
    .restart local v3    # "marketingType":Ljava/lang/String;
    .restart local v4    # "parser":Lcom/samsung/android/sdk/ppmt/content/CardParser;
    :cond_2
    return-object v0
.end method

.method public static parseAppData(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardAppData;
    .locals 9
    .param p0, "appData"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 42
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    const-string v8, "invalid appdata. appdata null"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-object v6

    .line 47
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "jo_appData":Lorg/json/JSONObject;
    const-string v7, "mid"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "mid":Ljava/lang/String;
    const-string/jumbo v7, "type"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v7, "userdata"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "userdata":Ljava/lang/String;
    const-string/jumbo v7, "targetid"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "targetid":Ljava/lang/String;
    new-instance v7, Lcom/samsung/android/sdk/ppmt/content/CardAppData;

    invoke-direct {v7, v2, v4, v5, v3}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 54
    .end local v1    # "jo_appData":Lorg/json/JSONObject;
    .end local v2    # "mid":Ljava/lang/String;
    .end local v3    # "targetid":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "userdata":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    const-string v8, "invalid appdata"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseResource(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "card"    # Lcom/samsung/android/sdk/ppmt/content/Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;
        }
    .end annotation

    .prologue
    .line 260
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardTxtFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->readTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "text":Ljava/lang/String;
    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x7d

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 263
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, "jo_text":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->getTextResourceByLanguage(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 266
    .local v1, "jo_language":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->getParser(Lcom/samsung/android/sdk/ppmt/content/Card;)Lcom/samsung/android/sdk/ppmt/content/CardParser;

    move-result-object v3

    .line 267
    .local v3, "parser":Lcom/samsung/android/sdk/ppmt/content/CardParser;
    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseTextContents(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V

    .line 268
    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseImageContents(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    return-void

    .line 269
    .end local v1    # "jo_language":Lorg/json/JSONObject;
    .end local v2    # "jo_text":Lorg/json/JSONObject;
    .end local v3    # "parser":Lcom/samsung/android/sdk/ppmt/content/CardParser;
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] invalid resource"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v5

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static parseResourceUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    const-string v10, "fail to get resource url. invalid params"

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v9, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v9}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v9

    .line 166
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "jo":Lorg/json/JSONObject;
    const-string/jumbo v9, "type1"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "type1Url":Ljava/lang/String;
    const-string/jumbo v9, "type2"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "type2Url":Ljava/lang/String;
    const-string v9, "lang1"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 170
    .local v5, "type1_Locale":Lorg/json/JSONArray;
    const-string v9, "lang2"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 173
    .local v7, "type2_Locale":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getScreenType(Landroid/content/Context;)I

    move-result v3

    .line 174
    .local v3, "screenType":I
    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    .line 175
    if-nez v5, :cond_1

    .line 176
    move-object v8, v4

    .line 195
    .local v8, "url":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 178
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    const-string v9, "bURL"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "baseUrl":Ljava/lang/String;
    const-string v9, "fname"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "filename":Ljava/lang/String;
    const-string/jumbo v9, "type1"

    invoke-static {v9, v0, v1, v5, v4}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->getResourceUrlByLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    .restart local v8    # "url":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_4

    .line 184
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 185
    move-object v8, v6

    .restart local v8    # "url":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v8    # "url":Ljava/lang/String;
    :cond_3
    move-object v8, v4

    .restart local v8    # "url":Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v8    # "url":Ljava/lang/String;
    :cond_4
    const-string v9, "bURL"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0    # "baseUrl":Ljava/lang/String;
    const-string v9, "fname"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .restart local v1    # "filename":Ljava/lang/String;
    const-string/jumbo v9, "type2"

    invoke-static {v9, v0, v1, v7, v6}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->getResourceUrlByLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "url":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "originText"    # Ljava/lang/String;
    .param p2, "isHtmlText"    # Z

    .prologue
    const/16 v6, 0x200e

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    const/16 v2, 0x200e

    .line 307
    .local v2, "LRM_UNICODE":C
    const-string v0, "(?i)"

    .line 309
    .local v0, "IGNORE_CASE_REGEX":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 310
    const-string v1, "<br>"

    .line 314
    .local v1, "LINE_BREAKS":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(?i)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 317
    .end local v0    # "IGNORE_CASE_REGEX":Ljava/lang/String;
    .end local v1    # "LINE_BREAKS":Ljava/lang/String;
    .end local v2    # "LRM_UNICODE":C
    .end local p1    # "originText":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 312
    .restart local v0    # "IGNORE_CASE_REGEX":Ljava/lang/String;
    .restart local v2    # "LRM_UNICODE":C
    .restart local p1    # "originText":Ljava/lang/String;
    :cond_1
    const-string v1, "\n"

    .restart local v1    # "LINE_BREAKS":Ljava/lang/String;
    goto :goto_0
.end method

.method public abstract parseImageContents(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract parseTextContents(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation
.end method

.method public parseUserData(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "card"    # Lcom/samsung/android/sdk/ppmt/content/Card;
    .param p2, "userdata"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    const-string/jumbo v2, "st"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setStyle(Ljava/lang/String;)V

    .line 92
    const-string v2, "cardDisplayTime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\p{Space}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 94
    .local v15, "str_displayTime":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 95
    .local v12, "cardDisplayTime":[Ljava/lang/String;
    const-string/jumbo v2, "ttl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\p{Space}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 96
    .local v16, "str_ttl":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 97
    .local v17, "ttl":[Ljava/lang/String;
    array-length v2, v12

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 98
    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] invalid ttl/displaytime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v12    # "cardDisplayTime":[Ljava/lang/String;
    .end local v15    # "str_displayTime":Ljava/lang/String;
    .end local v16    # "str_ttl":Ljava/lang/String;
    .end local v17    # "ttl":[Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 127
    .local v13, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] invalid userdata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v2

    .line 101
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v12    # "cardDisplayTime":[Ljava/lang/String;
    .restart local v15    # "str_displayTime":Ljava/lang/String;
    .restart local v16    # "str_ttl":Ljava/lang/String;
    .restart local v17    # "ttl":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardDisplayTimeFrom(I)V

    .line 102
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardDisplayTimeTo(I)V

    .line 103
    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setTtlFrom(J)V

    .line 104
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setTtlTo(J)V

    .line 105
    const-string v2, "random"

    const/16 v3, 0x3c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setRandomRange(I)V

    .line 107
    const-string v2, "contents"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setContentsUrl(Ljava/lang/String;)V

    .line 108
    const-string v2, "cctime"

    const/16 v3, 0x1e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCctime(I)V

    .line 110
    const-string v2, "freq"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 111
    .local v14, "ja":Lorg/json/JSONArray;
    if-nez v14, :cond_2

    .line 112
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setFreqCapping(IIII)V

    .line 118
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCardDisplayTimeFrom()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCardDisplayTimeTo()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getTtlFrom()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getTtlTo()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getRandomRange()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCctime()I

    move-result v11

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->isValid(Ljava/lang/String;IIJJII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 120
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v2

    .line 115
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setFreqCapping(IIII)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v2, "event"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMsgType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    const-string v2, "optin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setOptInCheckEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :cond_4
    return-void

    .line 124
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
