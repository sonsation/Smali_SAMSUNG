.class public Lcom/android/launcher3/features/CscFeature;
.super Ljava/lang/Object;
.source "CscFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 24
    .local v0, "instance":Lcom/samsung/android/feature/SemCscFeature;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 28
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 29
    .local v0, "instance":Lcom/samsung/android/feature/SemCscFeature;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .end local p1    # "defaultValue":Z
    :cond_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 44
    .local v0, "instance":Lcom/samsung/android/feature/SemCscFeature;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 49
    .local v0, "instance":Lcom/samsung/android/feature/SemCscFeature;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result p1

    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 34
    .local v0, "instance":Lcom/samsung/android/feature/SemCscFeature;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 39
    .local v0, "instance":Lcom/samsung/android/feature/SemCscFeature;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
