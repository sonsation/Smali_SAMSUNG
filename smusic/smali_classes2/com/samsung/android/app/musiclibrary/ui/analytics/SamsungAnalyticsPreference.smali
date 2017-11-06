.class public Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;
.super Ljava/lang/Object;
.source "SamsungAnalyticsPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$Switch;,
        Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$Key;
    }
.end annotation


# static fields
.field public static final SAMSUNG_ANALYTICS_PREF:Ljava/lang/String; = "music_samsung_analytics"

.field public static final default_setting_value_set_alarm:Ljava/lang/String; = "default_setting_value_set_alarm"

.field public static final is_default_setting_value:Ljava/lang/String; = "is_default_setting_value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFPrefKeyForManageTabs(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "key":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 150
    const/4 v0, 0x0

    .line 154
    :goto_1
    return-object v0

    .line 124
    :pswitch_0
    const-string v2, "5031"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const-string v2, "5032"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const-string v2, "5033"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const-string v2, "5034"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_4
    const-string v2, "5035"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_5
    const-string v2, "5036"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :pswitch_6
    const-string v2, "5037"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_7
    const-string v2, "5038"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 126
    :pswitch_8
    const-string/jumbo v0, "settings_manageMyMusicTabs_heart"

    .line 127
    goto :goto_1

    .line 129
    :pswitch_9
    const-string/jumbo v0, "settings_manageMyMusicTabs_playlists"

    .line 130
    goto :goto_1

    .line 132
    :pswitch_a
    const-string/jumbo v0, "settings_manageMyMusicTabs_tracks"

    .line 133
    goto :goto_1

    .line 135
    :pswitch_b
    const-string/jumbo v0, "settings_manageMyMusicTabs_albums"

    .line 136
    goto :goto_1

    .line 138
    :pswitch_c
    const-string/jumbo v0, "settings_manageMyMusicTabs_artists"

    .line 139
    goto :goto_1

    .line 141
    :pswitch_d
    const-string/jumbo v0, "settings_manageMyMusicTabs_genres"

    .line 142
    goto :goto_1

    .line 144
    :pswitch_e
    const-string/jumbo v0, "settings_manageMyMusicTabs_folders"

    .line 145
    goto :goto_1

    .line 147
    :pswitch_f
    const-string/jumbo v0, "settings_manageMyMusicTabs_composers"

    .line 148
    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x18d239
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static getPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v0, "music_samsung_analytics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 82
    const-string v0, "SamsungAnalyticsPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValue - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->start()V

    .line 99
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "SamsungAnalyticsPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValue - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->start()V

    .line 79
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 102
    const-string v0, "SamsungAnalyticsPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValue - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", b : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$3;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$3;->start()V

    .line 119
    return-void
.end method
