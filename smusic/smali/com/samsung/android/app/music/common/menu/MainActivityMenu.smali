.class public Lcom/samsung/android/app/music/common/menu/MainActivityMenu;
.super Ljava/lang/Object;
.source "MainActivityMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method private getCountVoucherUnRead()I
    .locals 10

    .prologue
    .line 282
    const-string v8, "( statusCode == \'01\' and read == \'1\' )"

    .line 287
    .local v8, "selection":Ljava/lang/String;
    new-instance v7, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "( statusCode == \'01\' and read == \'1\' )"

    invoke-direct {v7, v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 289
    .local v7, "query":Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->orderBy:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 289
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 293
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 298
    if-eqz v6, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, 0x0

    .line 298
    if-eqz v6, :cond_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 289
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v1, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_2
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private handleOptionSelected(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a03fd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkNetwork(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->requestLogin(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Z)I

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchSamsungAccount(Landroid/content/Context;)Z

    goto :goto_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a03f9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 273
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a03fa

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SUBSCRIPTION_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 276
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUserInfo(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "menuitem"    # Landroid/view/MenuItem;

    .prologue
    .line 232
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v2, :cond_0

    .line 233
    const/4 v0, -0x1

    .line 234
    .local v0, "resId":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v2}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 235
    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 253
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 256
    .end local v0    # "resId":I
    .end local v1    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    return-void

    .line 238
    .restart local v0    # "resId":I
    .restart local v1    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :pswitch_0
    const v0, 0x7f0a03fd

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    const v0, 0x7f0a03fb

    .line 242
    goto :goto_0

    .line 244
    :pswitch_2
    const v0, 0x7f0a03fc

    .line 245
    goto :goto_0

    .line 247
    :pswitch_3
    const v0, 0x7f0a03f9

    .line 248
    goto :goto_0

    .line 250
    :pswitch_4
    const v0, 0x7f0a03fa

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 53
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 54
    const v1, 0x7f12001e

    const v2, 0x7f0a03fc

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 57
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK_CONFIG_DEEPLINK_CN:Z

    if-eqz v1, :cond_1

    .line 58
    const v1, 0x7f120016

    const v2, 0x7f0a00f9

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 61
    :cond_1
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_CONFIG_OPCLOUD_VZW:Z

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/usa/VZCloudUtils;->hasVZCloudpkg(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const v1, 0x7f1205b3

    const v2, 0x7f12001f

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 67
    :cond_2
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_3

    .line 68
    const v1, 0x7f12001a

    const v2, 0x7f0a0424

    .line 69
    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 70
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 71
    const v1, 0x7f0201bd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 73
    const v1, 0x7f120015

    const v2, 0x7f0a02dd

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 74
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    const v1, 0x7f0201bb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 77
    const v1, 0x7f120017

    const v2, 0x7f0a0321

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 78
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 79
    const v1, 0x7f0201be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 81
    const v1, 0x7f120019

    const v2, 0x7f0a017c

    .line 82
    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 83
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 85
    const v1, 0x7f0201bf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 88
    const v1, 0x7f120018

    const v2, 0x7f0a032c

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 91
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 144
    const/4 v0, 0x1

    .line 145
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 225
    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v3, v0

    .line 227
    :cond_1
    return v3

    .line 147
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicModeWithConfirmDialog(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 150
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->handleOptionSelected(Landroid/view/MenuItem;)V

    .line 152
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "0053"

    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.vcast.mediamanager.ACTION_MUSIC"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/regional/usa/VZCloudUtils;->launchVZCloud(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->launchMilk(Landroid/app/Activity;)V

    goto :goto_0

    .line 163
    :sswitch_4
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkBadgeMenu;->getVisibility(Landroid/view/MenuItem;)Z

    move-result v2

    .line 165
    .local v2, "visibleBadge":Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 166
    .local v1, "userstatus":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    invoke-static {}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->newInstance()Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    .line 171
    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "local_only"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 185
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "0052"

    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkNetwork(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    if-eqz v2, :cond_4

    .line 177
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->VOUCHER_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 178
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 181
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    .end local v1    # "userstatus":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "visibleBadge":Z
    :sswitch_5
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 190
    invoke-static {}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->newInstance()Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    .line 191
    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "local_only"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkNetwork(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v7}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/android/app/music/milk/event/EventManageable;

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/android/app/music/milk/event/EventManageable;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/event/EventManageable;->launchEventWeb()V

    .line 197
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "0051"

    .line 198
    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkNetwork(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v7}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "0054"

    .line 210
    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :sswitch_7
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v3, :cond_6

    .line 219
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    .line 221
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "0001"

    .line 222
    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x7f120015 -> :sswitch_5
        0x7f120016 -> :sswitch_3
        0x7f120017 -> :sswitch_4
        0x7f120018 -> :sswitch_6
        0x7f120019 -> :sswitch_7
        0x7f12001a -> :sswitch_0
        0x7f12001e -> :sswitch_1
        0x7f12001f -> :sswitch_2
        0x7f1205c6 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_CONFIG_OPCLOUD_VZW:Z

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    .line 97
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f12001f

    invoke-static {v3, p1, v6}, Lcom/samsung/android/app/music/regional/usa/VZCloudUtils;->prepareOptionsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 99
    :cond_0
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK_CONFIG_DEEPLINK_CN:Z

    if-eqz v3, :cond_2

    .line 100
    const v3, 0x7f120016

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 101
    .local v2, "milkItem":Landroid/view/MenuItem;
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 102
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    :cond_1
    const v3, 0x7f1205c6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 106
    .local v1, "menuItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 107
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 111
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v2    # "milkItem":Landroid/view/MenuItem;
    :cond_2
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v3, :cond_7

    .line 112
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    .line 113
    .local v0, "isMyMusicMode":Z
    const v3, 0x7f120017

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 114
    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->getCountVoucherUnRead()I

    move-result v3

    invoke-static {p0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkBadgeMenu;->setBadgeView(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;I)V

    .line 116
    if-nez v0, :cond_8

    move v3, v4

    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    :cond_3
    const v3, 0x7f120015

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_4

    .line 122
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v3

    const-string v6, "event_badge_exist"

    invoke-virtual {v3, v6, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    .line 121
    :goto_1
    invoke-static {p0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkBadgeMenu;->setBadgeView(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;I)V

    .line 124
    if-nez v0, :cond_a

    move v3, v4

    :goto_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    :cond_4
    const v3, 0x7f120018

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_5

    .line 129
    if-nez v0, :cond_b

    :goto_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    :cond_5
    const v3, 0x7f12001a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_6

    .line 134
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    :cond_6
    const v3, 0x7f12001e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 138
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/menu/MainActivityMenu;->setUserInfo(Landroid/view/MenuItem;)V

    .line 140
    .end local v0    # "isMyMusicMode":Z
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_7
    return-void

    .restart local v0    # "isMyMusicMode":Z
    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_8
    move v3, v5

    .line 116
    goto :goto_0

    :cond_9
    move v3, v5

    .line 122
    goto :goto_1

    :cond_a
    move v3, v5

    .line 124
    goto :goto_2

    :cond_b
    move v4, v5

    .line 129
    goto :goto_3
.end method
