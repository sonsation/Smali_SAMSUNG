.class public Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;
.super Lcom/samsung/android/app/music/milk/share/country/ShareCountry;
.source "ShareCountryKR.java"


# instance fields
.field private final CAPTION1:Ljava/lang/String;

.field private final CAPTION2:Ljava/lang/String;

.field private final CAPTION3:Ljava/lang/String;

.field private final ONE_LINE_DESCRIPTION:Ljava/lang/String;

.field private final SHARE_COMMON_DESCRIPTION:Ljava/lang/String;

.field private final SHARE_FACEBOOK_DESCRIPTION:Ljava/lang/String;

.field private final SHARE_KAKAOTALK_DESCRIPTION:Ljava/lang/String;

.field private final SHARE_TWITTER_DESCRIPTION:Ljava/lang/String;

.field private final TWO_LINE_DESCRIPTION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;-><init>()V

    .line 16
    const-string v0, "%1$s - %2$s, %3$s, Music & More, #Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->SHARE_KAKAOTALK_DESCRIPTION:Ljava/lang/String;

    .line 19
    const-string v0, "%1$s - %2$s, %3$s \uc2a4\ud14c\uc774\uc158, Music & More, Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->SHARE_COMMON_DESCRIPTION:Ljava/lang/String;

    .line 22
    const-string v0, "%1$s - %2$s, %3$s \uc2a4\ud14c\uc774\uc158, #Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->SHARE_TWITTER_DESCRIPTION:Ljava/lang/String;

    .line 24
    const-string v0, "%s \uc2a4\ud14c\uc774\uc158"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->SHARE_FACEBOOK_DESCRIPTION:Ljava/lang/String;

    .line 26
    const-string v0, "%s"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->ONE_LINE_DESCRIPTION:Ljava/lang/String;

    .line 28
    const-string v0, "%1$s - %2$s"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->TWO_LINE_DESCRIPTION:Ljava/lang/String;

    .line 30
    const-string v0, ", #Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->CAPTION1:Ljava/lang/String;

    .line 32
    const-string v0, ", Music & More, Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->CAPTION2:Ljava/lang/String;

    .line 34
    const-string v0, "Music & More, #Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->CAPTION3:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 1
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;-><init>(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 16
    const-string v0, "%1$s - %2$s, %3$s, Music & More, #Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->SHARE_KAKAOTALK_DESCRIPTION:Ljava/lang/String;

    .line 19
    const-string v0, "%1$s - %2$s, %3$s \uc2a4\ud14c\uc774\uc158, Music & More, Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->SHARE_COMMON_DESCRIPTION:Ljava/lang/String;

    .line 22
    const-string v0, "%1$s - %2$s, %3$s \uc2a4\ud14c\uc774\uc158, #Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->SHARE_TWITTER_DESCRIPTION:Ljava/lang/String;

    .line 24
    const-string v0, "%s \uc2a4\ud14c\uc774\uc158"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->SHARE_FACEBOOK_DESCRIPTION:Ljava/lang/String;

    .line 26
    const-string v0, "%s"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->ONE_LINE_DESCRIPTION:Ljava/lang/String;

    .line 28
    const-string v0, "%1$s - %2$s"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->TWO_LINE_DESCRIPTION:Ljava/lang/String;

    .line 30
    const-string v0, ", #Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->CAPTION1:Ljava/lang/String;

    .line 32
    const-string v0, ", Music & More, Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->CAPTION2:Ljava/lang/String;

    .line 34
    const-string v0, "Music & More, #Samsung Music"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->CAPTION3:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getDefaultRecentlySharedSns(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    const-string v1, "com.kakao.talk"

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.kakao.talk"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string v1, "com.twitter.android"

    aput-object v1, v0, v5

    .line 171
    .local v0, "apps":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 161
    .end local v0    # "apps":[Ljava/lang/String;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 162
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.samsung.android.messaging"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string v1, "com.twitter.android"

    aput-object v1, v0, v5

    .restart local v0    # "apps":[Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v0    # "apps":[Ljava/lang/String;
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string v1, "com.twitter.android"

    aput-object v1, v0, v5

    .restart local v0    # "apps":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getExtraText(ILcom/samsung/android/app/music/common/model/share/ShareData;)Ljava/lang/String;
    .locals 9
    .param p1, "shareItem"    # I
    .param p2, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;->getResizedName(ILcom/samsung/android/app/music/common/model/share/ShareData;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "resizedNames":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getSeedType()I

    move-result v2

    .line 49
    .local v2, "seedType":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v1, "sb":Ljava/lang/StringBuffer;
    packed-switch p1, :pswitch_data_0

    .line 115
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    .line 139
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 52
    :pswitch_1
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 57
    :pswitch_2
    const-string v3, "%1$s - %2$s, %3$s, Music & More, #Samsung Music"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    aget-object v5, v0, v8

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 63
    :pswitch_3
    const-string v3, "%1$s - %2$s"

    new-array v4, v8, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v3, ", Music & More, Samsung Music"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 69
    :pswitch_4
    const-string v3, "%s"

    new-array v4, v7, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v3, ", Music & More, Samsung Music"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 75
    :pswitch_5
    packed-switch v2, :pswitch_data_3

    goto :goto_0

    .line 80
    :pswitch_6
    const-string v3, "%1$s - %2$s, %3$s \uc2a4\ud14c\uc774\uc158, #Samsung Music"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    aget-object v5, v0, v8

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 86
    :pswitch_7
    const-string v3, "%1$s - %2$s"

    new-array v4, v8, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v3, ", #Samsung Music"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 92
    :pswitch_8
    const-string v3, "%s"

    new-array v4, v7, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v3, ", #Samsung Music"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 98
    :pswitch_9
    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    .line 103
    :pswitch_a
    const-string v3, "%s \uc2a4\ud14c\uc774\uc158"

    new-array v4, v7, [Ljava/lang/Object;

    aget-object v5, v0, v8

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 110
    :pswitch_b
    const-string v3, "Music & More, #Samsung Music"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 120
    :pswitch_c
    const-string v3, "%1$s - %2$s, %3$s \uc2a4\ud14c\uc774\uc158, Music & More, Samsung Music"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    aget-object v5, v0, v8

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 126
    :pswitch_d
    const-string v3, "%1$s - %2$s"

    new-array v4, v8, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v3, ", Music & More, Samsung Music"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 132
    :pswitch_e
    const-string v3, "%s"

    new-array v4, v7, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v3, ", Music & More, Samsung Music"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 115
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 52
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 75
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 98
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public getShortenUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "longUrl"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/share/ShortenUtil;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
