.class public Lcom/samsung/android/settings/activekey/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;,
        Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;,
        Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    }
.end annotation


# instance fields
.field private AppWhiteListBCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludedActivityListBCM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private makeAppWhiteListBCM()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.contacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "m.google.android.apps.plus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.twitter.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.instagram.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.kakao.talk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.amazon.kindle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.popupcalculator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.clockpackage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.android.app.memo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.voicerecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "jp.co.nttdocomo.carriermail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.nttdocomo.android.store"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.nttdocomo.android.mediaplayer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.nttdocomo.android.dmenu2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "jp.co.nttdocomo.saigaiban"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method private makeExcludedActivityListBCM()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    const-string/jumbo v1, "com.google.android.gm"

    const-string/jumbo v2, "com.google.android.gm.ConversationListActivityGoogleMail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/activekey/AppList;->setResult(I)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 94
    .local v22, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "pressed_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "long"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->makeAppWhiteListBCM()V

    .line 98
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->makeExcludedActivityListBCM()V

    .line 101
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 102
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v15, "LauncherIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/4 v14, 0x0

    .line 105
    .local v14, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 107
    const/16 v3, 0x220

    .line 106
    invoke-virtual {v2, v15, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 112
    .local v14, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v13, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/AppList$AppListItem;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "app$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v18, "app":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_2
    new-instance v20, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 125
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 124
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 127
    .local v20, "appListitem":Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    .end local v13    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/AppList$AppListItem;>;"
    .end local v18    # "app":Landroid/content/pm/ResolveInfo;
    .end local v19    # "app$iterator":Ljava/util/Iterator;
    .end local v20    # "appListitem":Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    .local v14, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 110
    const/16 v3, 0x20

    .line 109
    invoke-virtual {v2, v15, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .local v14, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_0

    .line 131
    .restart local v13    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/AppList$AppListItem;>;"
    .restart local v19    # "app$iterator":Ljava/util/Iterator;
    :cond_4
    new-instance v17, Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;)V

    .line 132
    .local v17, "alphaComparator":Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 136
    .local v24, "productName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "xcover3ve"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v7, "xcoverAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/AppList$AppListItem;>;"
    new-instance v21, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    const-string/jumbo v2, "noaction"

    const-string/jumbo v3, "noaction"

    .line 139
    const v4, 0x7f0b0406

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/activekey/AppList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 140
    const v6, 0x7f02050c

    .line 139
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 138
    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 141
    .local v21, "donothing":Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v25, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    const-string/jumbo v2, "torch"

    const-string/jumbo v3, "torch"

    .line 143
    const v4, 0x7f0b0407

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/activekey/AppList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 144
    const v6, 0x7f0206b1

    .line 143
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 142
    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 145
    .local v25, "torch":Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v7, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    new-instance v2, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    const v5, 0x7f040192

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    .line 154
    .end local v7    # "xcoverAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/AppList$AppListItem;>;"
    .end local v21    # "donothing":Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    .end local v25    # "torch":Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v23

    .line 155
    .local v23, "list_view":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    .line 161
    .local v16, "actionBar":Landroid/app/ActionBar;
    if-eqz v16, :cond_6

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    :cond_6
    return-void

    .line 150
    .end local v16    # "actionBar":Landroid/app/ActionBar;
    .end local v23    # "list_view":Landroid/widget/ListView;
    :cond_7
    new-instance v8, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    const v11, 0x7f040192

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 180
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v1, "result_intent":Landroid/content/Intent;
    const-string/jumbo v3, "ActiveKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string/jumbo v3, "ActiveKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app title : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v3, "selected_app"

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string/jumbo v3, "selected_app_title"

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 187
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "app":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const-string/jumbo v2, "noaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const-string/jumbo v0, ""

    .line 194
    :cond_0
    const-string/jumbo v2, "short"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "short_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->finish()V

    .line 179
    return-void

    .line 196
    :cond_2
    const-string/jumbo v2, "long"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "short_press_app_battery_conserve"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "long_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 202
    :cond_4
    const-string/jumbo v2, "double"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "double_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 171
    :pswitch_0
    const-string/jumbo v0, "ActiveKeyAppList"

    const-string/jumbo v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->finish()V

    .line 173
    const/4 v0, 0x1

    return v0

    .line 169
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
