.class public Lcom/samsung/android/app/SemLocalePicker;
.super Ljava/lang/Object;
.source "SemLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllLocales(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 81
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, "localeListFromLocalePicker":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/4 v2, 0x0

    .line 84
    .local v2, "localeInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;>;"
    if-eqz v3, :cond_1

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "localeInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v2, "localeInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 88
    .local v0, "info":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    if-eqz v0, :cond_0

    .line 89
    new-instance v4, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;-><init>(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0    # "info":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v2    # "localeInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;>;"
    :cond_1
    return-object v2
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 0
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 103
    return-void
.end method
