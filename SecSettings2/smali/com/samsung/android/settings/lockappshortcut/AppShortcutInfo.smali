.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;
.super Ljava/lang/Object;
.source "AppShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;,
        Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "appInfo"    # Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    .prologue
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "lock_application_shortcut"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "appShortcut_Info":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 67
    :cond_0
    const/4 v13, 0x0

    return-object v13

    .line 69
    :cond_1
    const-string/jumbo v13, ";"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "shorcutInfo":[Ljava/lang/String;
    aget-object v3, v12, p1

    .line 73
    .local v3, "db":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string/jumbo v13, ""

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 74
    :cond_2
    const/4 v13, 0x0

    return-object v13

    .line 76
    :cond_3
    const/16 v13, 0x2f

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 77
    .local v10, "package_index":I
    const/4 v13, 0x0

    invoke-virtual {v3, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "package_name":Ljava/lang/String;
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "activity_name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 81
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x0

    .line 83
    .local v9, "isdeleted":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 84
    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x200

    .line 83
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 85
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p2

    iput-boolean v13, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v8, v13, v14, v15}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-nez v9, :cond_4

    .line 98
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 99
    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x80

    .line 98
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 100
    .restart local v8    # "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p2

    iput-boolean v13, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v8, v13, v14, v15}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local p2    # "appInfo":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    :cond_4
    :goto_1
    return-object p2

    .line 91
    .restart local p2    # "appInfo":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    :catch_0
    move-exception v5

    .line 92
    .local v5, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v5}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 93
    const-string/jumbo v13, "AppShortcutInfo"

    const-string/jumbo v14, "ClassCastException occured"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v4

    .line 89
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v13, "AppShortcutInfo"

    const-string/jumbo v14, "cannot find app name !"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v9, 0x1

    goto :goto_0

    .line 110
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v7

    .line 111
    .local v7, "e1":Ljava/lang/ClassCastException;
    invoke-virtual {v7}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 112
    const-string/jumbo v13, "AppShortcutInfo"

    const-string/jumbo v14, "ClassCastException occured"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v7    # "e1":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v6

    .line 105
    .local v6, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v13, "AppShortcutInfo"

    const-string/jumbo v14, "cannot find app name !"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-eqz v13, :cond_4

    .line 108
    const/16 p2, 0x0

    .local p2, "appInfo":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    goto :goto_1
.end method

.method protected static getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 149
    if-nez p0, :cond_0

    return-object v2

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_application_shortcut"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "appShortcut_Info":Ljava/lang/String;
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "shorcutInfo":[Ljava/lang/String;
    aget-object v2, v1, p1

    return-object v2
.end method

.method protected static getShortcutStatus(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_application_shortcut"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "appShortcut_Info":Ljava/lang/String;
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "shorcutInfo":[Ljava/lang/String;
    aget-object v2, v1, p1

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static saveApplicationData(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_application_shortcut"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "appShortcut_Info":Ljava/lang/String;
    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "shorcutInfo":[Ljava/lang/String;
    aput-object p2, v2, p1

    .line 139
    const-string/jumbo v0, ""

    .line 141
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 142
    .local v1, "info":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "info":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_application_shortcut"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    return-void
.end method
