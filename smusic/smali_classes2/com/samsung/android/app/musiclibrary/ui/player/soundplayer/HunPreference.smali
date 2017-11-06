.class public final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;
.super Ljava/lang/Object;
.source "HunPreference.java"


# static fields
.field private static final HUN_PREF:Ljava/lang/String; = "hun_pref"

.field public static final PREF_KEY_ALARM_VALUE:Ljava/lang/String; = "alarmValue"

.field public static final PREF_KEY_DONT_SHOW_CHECK:Ljava/lang/String; = "dontShowCheck"

.field public static final PREF_KEY_HUN_ACTIVATED:Ljava/lang/String; = "hunActivated"

.field public static final PREF_KEY_NOTI_COUNT:Ljava/lang/String; = "notiCount"


# instance fields
.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "hun_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mPref:Landroid/content/SharedPreferences;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 25
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Boolean;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mPref:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Long;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mPref:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method
