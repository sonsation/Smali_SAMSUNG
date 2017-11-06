.class public final Lcom/samsung/android/app/music/provider/SettingProvider;
.super Landroid/content/ContentProvider;
.source "SettingProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.music.setting"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProviderController:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

.field private mSharedPreferenceCache:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/music/provider/SettingProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/SettingProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mSharedPreferenceCache:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mProviderController:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mProviderController:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mSharedPreferenceCache:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mProviderController:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    const-string v1, "com.sec.android.app.music.setting"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 43
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mProviderController:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

    .line 44
    const-string/jumbo v1, "settings_cache_pref"

    const/4 v2, 0x4

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mSharedPreferenceCache:Landroid/content/SharedPreferences;

    .line 46
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mProviderController:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    .local v6, "c":Landroid/database/Cursor;
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "key":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 56
    const/4 v8, 0x0

    .line 57
    .local v8, "value":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 59
    .local v9, "valueIndex":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    .line 60
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 65
    .end local v9    # "valueIndex":I
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mSharedPreferenceCache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    return-object v6

    .line 63
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    const-string v0, "default_value"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mSharedPreferenceCache:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/SettingProvider;->mProviderController:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
