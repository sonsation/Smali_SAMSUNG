.class public Lcn/com/xy/sms/util/ParseWatchManager;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseMsgForWatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, " Context is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, " phoneNumber is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, " smsContent is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v0}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->handerWatchValueMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method
