.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;,
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;
    }
.end annotation


# static fields
.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 272
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 273
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 275
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 277
    return v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 279
    return v0

    .line 281
    :catch_0
    move-exception v7

    .line 283
    .local v7, "e":Ljava/lang/Exception;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 286
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    throw v0
.end method

.method public static isExistKioskContainers(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "persona"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 35
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 37
    return v4

    .line 40
    .end local v0    # "info":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    return v3
.end method
