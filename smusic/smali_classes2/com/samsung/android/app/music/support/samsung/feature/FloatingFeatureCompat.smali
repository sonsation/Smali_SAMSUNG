.class public Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;
.super Ljava/lang/Object;
.source "FloatingFeatureCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableStatus(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 13
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getEnableStatus(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 18
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 21
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getInteger(Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 60
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "tagValue":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 38
    .end local v0    # "tagValue":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "tagValue":Ljava/lang/String;
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
