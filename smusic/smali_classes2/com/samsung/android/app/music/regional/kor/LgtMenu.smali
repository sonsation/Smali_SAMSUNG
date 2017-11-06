.class public Lcom/samsung/android/app/music/regional/kor/LgtMenu;
.super Ljava/lang/Object;
.source "LgtMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mFragment:Landroid/app/Fragment;

    .line 32
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private performMenuTsOnlineStore()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 72
    iget-object v9, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 73
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_0

    .line 114
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "appInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v5, 0x0

    .line 78
    .local v5, "isInstalled":Z
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 80
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 81
    .local v1, "appName":Ljava/lang/String;
    const-string v9, "com.lgu"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 82
    const/4 v5, 0x1

    .line 88
    .end local v1    # "appName":Ljava/lang/String;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    if-nez v5, :cond_4

    .line 89
    :try_start_0
    const-string v8, "com.lguplus.appstore"

    .line 90
    .local v8, "storePackageName":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 91
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "ozstore.external.linked"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const/16 v9, 0x4e20

    iget v10, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v9, v10, :cond_3

    .line 95
    const-string v9, "ozstore://STORE/PID=QA6010054881"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 107
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "storePackageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "MusicMenu"

    const-string v10, "Activity Not found!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 110
    iget-object v9, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mContext:Landroid/content/Context;

    const-string v10, "Target Activity Not Found"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v1    # "appName":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v8    # "storePackageName":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v9, "onestore://common/product/0000685984"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 111
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "storePackageName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 112
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 102
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v9, "com.lgu"

    const-string v10, "com.lgu.page.LoadingPage"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    const-string v9, "payload"

    const-string v10, "PID=0000685984"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v9, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private updateMenuVisibleOnlineStore(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 59
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 60
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v1

    .line 65
    .local v1, "listType":I
    const v2, 0x110001

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 37
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 46
    const/4 v0, 0x1

    .line 47
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 49
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->performMenuTsOnlineStore()V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x7f1205c9
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 41
    const v0, 0x7f1205c9

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->updateMenuVisibleOnlineStore(Landroid/view/Menu;I)V

    .line 42
    return-void
.end method
