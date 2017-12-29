.class public Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;
.super Landroid/app/ListActivity;
.source "NavigationBarAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;
    }
.end annotation


# static fields
.field private static sDbKey:Ljava/lang/String;


# instance fields
.field private mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getAppListAdapter()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 171
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v7, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;>;"
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "LauncherIntent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/16 v9, 0x80

    .line 176
    .local v9, "filter":I
    iget-object v11, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 179
    .local v5, "app":Landroid/content/pm/ResolveInfo;
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v11, v11, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v11, :cond_0

    .line 182
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "pkg_name":Ljava/lang/String;
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "activity_name":Ljava/lang/String;
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12, v13, v13}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 187
    .local v2, "activity_icon":Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    .line 188
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 187
    invoke-direct {v8, v10, v3, v11, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 190
    .local v8, "appListitem":Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v2    # "activity_icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "activity_name":Ljava/lang/String;
    .end local v5    # "app":Landroid/content/pm/ResolveInfo;
    .end local v8    # "appListitem":Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;
    .end local v10    # "pkg_name":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;

    const/4 v11, 0x0

    invoke-direct {v4, v11}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;)V

    .line 194
    .local v4, "alphaComparator":Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;
    invoke-static {v7, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 196
    return-object v7
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 85
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "dbkey"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->sDbKey:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getAppListAdapter()Ljava/util/List;

    move-result-object v5

    .line 91
    .local v5, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;>;"
    new-instance v7, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;

    invoke-direct {v7, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;)V

    .line 92
    .local v7, "alphaComparator":Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;
    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    const v3, 0x7f040192

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 98
    .local v9, "list_view":Landroid/widget/ListView;
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    invoke-static {p0, v9}, Lcom/android/settings/Utils;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 104
    .local v6, "actionBar":Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    .line 105
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 123
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v1, "result_intent":Landroid/content/Intent;
    const-string/jumbo v3, "NavigationBarAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v3, "NavigationBarAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app title : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 128
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mActivityName:Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->sDbKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LaunchApp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->finish()V

    .line 122
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 114
    :pswitch_0
    const-string/jumbo v0, "NavigationBarAppList"

    const-string/jumbo v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->finish()V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 112
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
