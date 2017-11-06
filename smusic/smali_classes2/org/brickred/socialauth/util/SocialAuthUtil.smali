.class public Lorg/brickred/socialauth/util/SocialAuthUtil;
.super Ljava/lang/Object;
.source "SocialAuthUtil.java"


# direct methods
.method public static getMonthInInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "monthName"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 56
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "months":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    .line 64
    :goto_1
    return v1

    .line 59
    :cond_0
    aget-object v3, v2, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
