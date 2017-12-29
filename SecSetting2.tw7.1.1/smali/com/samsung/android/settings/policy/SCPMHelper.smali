.class public Lcom/samsung/android/settings/policy/SCPMHelper;
.super Ljava/lang/Object;
.source "SCPMHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;
    }
.end annotation


# static fields
.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final SETTINGS_POLICY_PROJECTION:[Ljava/lang/String;

.field private static final SETTINGS_POLICY_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-string/jumbo v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/policy/SCPMHelper;->AUTHORITY_URI:Landroid/net/Uri;

    .line 23
    sget-object v0, Lcom/samsung/android/settings/policy/SCPMHelper;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item/hideMenuList"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/policy/SCPMHelper;->SETTINGS_POLICY_URI:Landroid/net/Uri;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "item"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 27
    const-string/jumbo v1, "category"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 26
    sput-object v0, Lcom/samsung/android/settings/policy/SCPMHelper;->SETTINGS_POLICY_PROJECTION:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/policy/SCPMHelper;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/settings/policy/SCPMHelper;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getUnsupportedMenuList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/settings/policy/SCPMHelper;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "SCPM is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-object v3

    .line 46
    :cond_0
    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "isAvailable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/samsung/android/settings/policy/SCPMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/samsung/android/settings/policy/SCPMHelper;->SETTINGS_POLICY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/settings/policy/SCPMHelper;->SETTINGS_POLICY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 52
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v8, "unsupportedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;>;"
    if-eqz v7, :cond_2

    .line 54
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v6, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;

    const-string/jumbo v1, "item"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string/jumbo v2, "category"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-direct {v6, p0, v1, v2}, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;-><init>(Lcom/samsung/android/settings/policy/SCPMHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v6, "HideMenu":Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v6    # "HideMenu":Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 65
    return-object v8

    .line 61
    :cond_2
    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "cursor is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object v3
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcom/samsung/android/settings/policy/SCPMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportedMenu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "menuKey"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 69
    const/4 v5, 0x0

    .line 70
    .local v5, "projName":Ljava/lang/String;
    const-string/jumbo v7, "dream2"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    const-string/jumbo v5, "dream2"

    .line 77
    .local v5, "projName":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    if-nez p2, :cond_3

    .line 78
    :cond_0
    const-string/jumbo v7, "SCPMHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "projectName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", menuKey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v12

    .line 72
    .local v5, "projName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "dream"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 73
    const-string/jumbo v5, "dream"

    .local v5, "projName":Ljava/lang/String;
    goto :goto_0

    .line 75
    .local v5, "projName":Ljava/lang/String;
    :cond_2
    move-object v5, p1

    .local v5, "projName":Ljava/lang/String;
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/policy/SCPMHelper;->getUnsupportedMenuList()Ljava/util/ArrayList;

    move-result-object v6

    .line 82
    .local v6, "unsupportedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;>;"
    if-nez v6, :cond_4

    .line 83
    const-string/jumbo v7, "SCPMHelper"

    const-string/jumbo v8, "unsupportedList is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v12

    .line 86
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_8

    .line 88
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;

    .line 89
    .local v2, "item":Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;
    if-eqz v2, :cond_5

    const-string/jumbo v7, "SCPMHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mProjectName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_5
    if-eqz v2, :cond_7

    iget-object v7, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mProjectName:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 92
    iget-object v7, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mProjectName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 93
    iget-object v7, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    const-string/jumbo v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "menuList":[Ljava/lang/String;
    array-length v9, v4

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_7

    aget-object v3, v4, v7

    .line 95
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 96
    const-string/jumbo v7, "SCPMHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Remove ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mProjectName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v8

    .line 94
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 87
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "menuList":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 104
    .end local v2    # "item":Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;
    :cond_8
    return v12
.end method
