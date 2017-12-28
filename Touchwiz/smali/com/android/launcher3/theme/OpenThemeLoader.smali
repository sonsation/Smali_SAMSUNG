.class public Lcom/android/launcher3/theme/OpenThemeLoader;
.super Ljava/lang/Object;
.source "OpenThemeLoader.java"


# static fields
.field private static final CURRENT_THEME_PACKAGE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OpenThemeLoader"


# instance fields
.field private changedTheme:[Z

.field private isThemeChanged:Z

.field private final mContext:Landroid/content/Context;

.field private mThemePackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "current_sec_home_theme_package"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "current_sec_appicon_theme_package"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "current_sec_eventhome_theme_package"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current_sec_active_themepackage"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "current_sec_active_themepackage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->changedTheme:[Z

    .line 64
    iput-boolean v3, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->isThemeChanged:Z

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeLoader;->loadCurrentThemePackages()V

    .line 76
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeLoader;->setTheme()V

    .line 77
    return-void

    .line 52
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private loadCurrentThemePackages()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 88
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 90
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v2

    .line 91
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 93
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v6

    if-ne v2, v6, :cond_1

    .line 94
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v7, v7, v2

    const-string v8, ".common"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 96
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v7, v7, v2

    const-string v8, ".mms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v6

    if-eq v2, v6, :cond_0

    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v6

    if-eq v2, v6, :cond_0

    .line 101
    :try_start_1
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/theme/OpenThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 101
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    goto :goto_1

    .line 103
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e2":Ljava/lang/Exception;
    const-string v6, "OpenThemeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to add default package name to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 111
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 112
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {p0, v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 113
    .local v3, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_3

    .line 114
    const-string v5, "homescreen_menu_page_navi_home_f"

    .line 115
    .local v5, "sampleDrawableString":Ljava/lang/String;
    const-string v6, "drawable"

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 116
    .local v4, "resId":I
    if-eqz v4, :cond_3

    .line 118
    :try_start_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "resId":I
    .end local v5    # "sampleDrawableString":Ljava/lang/String;
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v6, v6, v10

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 129
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {p0, v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 130
    .restart local v3    # "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_4

    .line 131
    const-string v5, "ic_allapps"

    .line 132
    .restart local v5    # "sampleDrawableString":Ljava/lang/String;
    const-string v6, "drawable"

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 133
    .restart local v4    # "resId":I
    if-eqz v4, :cond_4

    .line 135
    :try_start_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 146
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "resId":I
    .end local v5    # "sampleDrawableString":Ljava/lang/String;
    :cond_4
    :goto_4
    const/4 v2, 0x0

    :goto_5
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_7

    .line 147
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v6, v6, v2

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 148
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 146
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 119
    .restart local v3    # "r":Landroid/content/res/Resources;
    .restart local v4    # "resId":I
    .restart local v5    # "sampleDrawableString":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 120
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "OpenThemeLoader"

    const-string v7, "Theme package[1] has existed but no resources, set Default Theme."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 122
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_3

    .line 136
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v0

    .line 137
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "OpenThemeLoader"

    const-string v7, "Theme package[2] has existed but no resources, set Default Theme."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 139
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_4

    .line 151
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "resId":I
    .end local v5    # "sampleDrawableString":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private setChangedTheme(IZ)V
    .locals 1
    .param p1, "themeType"    # I
    .param p2, "changed"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->changedTheme:[Z

    aput-boolean p2, v0, p1

    .line 275
    :cond_0
    return-void
.end method

.method private setTheme()V
    .locals 22

    .prologue
    .line 154
    const/4 v8, 0x0

    .line 155
    .local v8, "isNotFound":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 156
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v16

    .line 158
    .local v16, "themePackageName":Ljava/lang/String;
    const-string v18, "OpenThemeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "OpenThemeLoader::setTheme() ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") currentTheme : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 161
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->setChangedTheme(IZ)V

    .line 162
    sget-object v18, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_0

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->setThemePackageName(ILjava/lang/String;)V

    .line 184
    :cond_0
    :goto_1
    if-nez v8, :cond_1

    .line 186
    const-string v13, "themePreference"

    .line 187
    .local v13, "preferences":Ljava/lang/String;
    const-string v14, "prevHomeTheme_"

    .line 189
    .local v14, "preferences_prevHomeTheme":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "themePreference"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 190
    .local v12, "pref":Landroid/content/SharedPreferences;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "prevHomeTheme_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, "previousTheme":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "prevHomeTheme_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_lastUpdateTime"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 192
    .local v10, "lastUpdateTime":Ljava/lang/Long;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "prevHomeTheme_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_versionCode"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 193
    .local v17, "versionCode":Ljava/lang/Integer;
    const/4 v7, 0x0

    .line 194
    .local v7, "info":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x1

    .line 196
    .local v9, "isTheSameVersion":Z
    if-eqz v11, :cond_6

    .line 197
    const/16 v18, 0x2000

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 199
    iget-wide v0, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/4 v9, 0x1

    .line 207
    :goto_2
    const-string v18, "OpenThemeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "OpenThemeLoader::setTheme() ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") PreviousTheme : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , isTheSameVersion = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    if-eqz v9, :cond_7

    .line 210
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->setChangedTheme(IZ)V

    .line 156
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "isTheSameVersion":Z
    .end local v10    # "lastUpdateTime":Ljava/lang/Long;
    .end local v12    # "pref":Landroid/content/SharedPreferences;
    .end local v13    # "preferences":Ljava/lang/String;
    .end local v14    # "preferences_prevHomeTheme":Ljava/lang/String;
    .end local v15    # "previousTheme":Ljava/lang/String;
    .end local v17    # "versionCode":Ljava/lang/Integer;
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 167
    :cond_2
    if-eqz v11, :cond_3

    .line 168
    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 169
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 171
    :cond_3
    const-string v18, "OpenThemeLoader"

    const-string v19, "the variable pm is null in setTheme()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 173
    :catch_0
    move-exception v4

    .line 174
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "OpenThemeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Theme package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not founded"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v18, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->setThemePackageName(ILjava/lang/String;)V

    .line 180
    :goto_4
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 178
    :cond_4
    sget-object v18, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->setThemePackageName(ILjava/lang/String;)V

    goto :goto_4

    .line 199
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    .restart local v9    # "isTheSameVersion":Z
    .restart local v10    # "lastUpdateTime":Ljava/lang/Long;
    .restart local v12    # "pref":Landroid/content/SharedPreferences;
    .restart local v13    # "preferences":Ljava/lang/String;
    .restart local v14    # "preferences_prevHomeTheme":Ljava/lang/String;
    .restart local v15    # "previousTheme":Ljava/lang/String;
    .restart local v17    # "versionCode":Ljava/lang/Integer;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 201
    :cond_6
    :try_start_2
    const-string v18, "OpenThemeLoader"

    const-string v19, "the variable pm is null in setTheme()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 203
    :catch_1
    move-exception v4

    .line 204
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "OpenThemeLoader"

    const-string v19, "Package not found"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 212
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    sget-object v18, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->EVENT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 215
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/theme/OpenThemeLoader;->isThemeChanged:Z

    .line 216
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 217
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "prevHomeTheme_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    if-eqz v7, :cond_8

    .line 219
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "prevHomeTheme_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_lastUpdateTime"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget-wide v0, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 221
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "prevHomeTheme_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_versionCode"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    :cond_8
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->setChangedTheme(IZ)V

    goto/16 :goto_3

    .line 229
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "isTheSameVersion":Z
    .end local v10    # "lastUpdateTime":Ljava/lang/Long;
    .end local v12    # "pref":Landroid/content/SharedPreferences;
    .end local v13    # "preferences":Ljava/lang/String;
    .end local v14    # "preferences_prevHomeTheme":Ljava/lang/String;
    .end local v15    # "previousTheme":Ljava/lang/String;
    .end local v16    # "themePackageName":Ljava/lang/String;
    .end local v17    # "versionCode":Ljava/lang/Integer;
    :cond_9
    return-void
.end method

.method private setThemePackageName(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 262
    return-void
.end method


# virtual methods
.method public getChangedTheme(I)Z
    .locals 1
    .param p1, "themeType"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->changedTheme:[Z

    aget-boolean v0, v0, p1

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentIconPackages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_appicon_theme_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 249
    :goto_0
    return-object v2

    .line 238
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 239
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    .line 242
    :cond_2
    const-string v3, "OpenThemeLoader"

    const-string v4, "the variable pm is null in getResources()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "OpenThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NameNotFoundException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getThemePackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isThemeChanged()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->isThemeChanged:Z

    return v0
.end method

.method public reloadThemePackages()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeLoader;->loadCurrentThemePackages()V

    .line 81
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeLoader;->setTheme()V

    .line 82
    return-void
.end method

.method public setIsThemeChanged(Z)V
    .locals 0
    .param p1, "isThemeChanged"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/launcher3/theme/OpenThemeLoader;->isThemeChanged:Z

    .line 62
    return-void
.end method
