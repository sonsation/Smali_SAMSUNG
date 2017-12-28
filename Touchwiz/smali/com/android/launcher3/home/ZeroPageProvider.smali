.class public Lcom/android/launcher3/home/ZeroPageProvider;
.super Landroid/content/ContentProvider;
.source "ZeroPageProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.zeropage"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final GET_ZEROPAGE_ACTIVE:Ljava/lang/String; = "get_zeropage_active"

.field private static final GET_ZEROPAGE_SETTING:Ljava/lang/String; = "get_zeropage_setting"

.field private static final LAUNCHER_CLASS_NAME:Ljava/lang/String; = "launcher_class_name"

.field private static final LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "launcher_package_name"

.field public static final START_FROM_ZEROPAGE:Ljava/lang/String; = "start_from_zeropage"

.field private static final ZEROPAGE_ACTIVE:Ljava/lang/String; = "zeropage_active"

.field private static final ZEROPAGE_CLASS_NAME:Ljava/lang/String; = "zeropage_class_name"

.field public static final ZEROPAGE_DEFAULT_HOME:Ljava/lang/String; = "zeropage_default_home"

.field private static final ZEROPAGE_PACKAGE_NAME:Ljava/lang/String; = "zeropage_package_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.sec.android.app.launcher.zeropage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/ZeroPageProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getZeroPageActive()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "activeBundle":Landroid/os/Bundle;
    sget-object v5, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "zeropage_package":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 121
    .local v2, "isInstalled":Z
    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    .line 122
    .local v1, "isActiveZeroPage":Z
    const-string v5, "zeropage_active"

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    return-object v0

    .line 122
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getZeroPageSettings()Landroid/os/Bundle;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 95
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v4, "settingBundle":Landroid/os/Bundle;
    sget-object v7, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "zeropage_package":Ljava/lang/String;
    sget-object v7, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "zeropage_class":Ljava/lang/String;
    const-string v7, "zeropage_package_name"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v7, "zeropage_class_name"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v7, "launcher_package_name"

    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "launcher_class_name"

    const-class v10, Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 105
    .local v2, "isInstalled":Z
    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    .line 106
    .local v0, "isActiveZeroPage":Z
    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v10, "start_from_zeropage"

    invoke-static {v7, v10}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 107
    .local v3, "isStartFromZeroPage":Z
    const-string v10, "start_from_zeropage"

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    move v7, v8

    :goto_0
    invoke-virtual {v4, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v10, "zeropage_default_home"

    invoke-static {v7, v10}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 110
    .local v1, "isDefaultZeroPage":Z
    const-string v7, "zeropage_default_home"

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    return-object v4

    .end local v1    # "isDefaultZeroPage":Z
    :cond_0
    move v7, v9

    .line 107
    goto :goto_0

    .restart local v1    # "isDefaultZeroPage":Z
    :cond_1
    move v8, v9

    .line 110
    goto :goto_1
.end method

.method public static notifyChange(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/home/ZeroPageProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 92
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 81
    :sswitch_0
    const-string v1, "get_zeropage_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "get_zeropage_active"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getZeroPageSettings()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 85
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageProvider;->getZeroPageActive()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5178d3db -> :sswitch_1
        -0x2202faef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
