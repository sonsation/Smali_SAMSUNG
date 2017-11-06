.class public Lcom/mapps/android/util/AdPreferences;
.super Ljava/lang/Object;
.source "AdPreferences.java"


# instance fields
.field private settingActivity:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    .line 9
    const-string v0, "Mezzo_Preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    .line 10
    return-void
.end method


# virtual methods
.method public exist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 15
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 19
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 22
    :cond_0
    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 40
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 43
    :cond_0
    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 33
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 36
    :cond_0
    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 46
    iget-object v2, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 49
    :cond_0
    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 73
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 104
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 114
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRemoveAllPreference()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRemoveItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/mapps/android/util/AdPreferences;->settingActivity:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
