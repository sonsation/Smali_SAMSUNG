.class final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "MilkPlayerMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExplicitMessage"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 396
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    .line 397
    return-void
.end method

.method static build(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "actionCode"    # I

    .prologue
    .line 381
    const-string v1, "explicit_popup"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;-><init>(Landroid/os/Bundle;)V

    .line 383
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 384
    const-string v1, "extra_action_code"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setInteger(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 385
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->build()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method static obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 389
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public doPositive()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 428
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    .line 429
    const-string v2, "extra_action_code"

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 430
    .local v0, "actionCode":I
    packed-switch v0, :pswitch_data_0

    .line 449
    :goto_0
    :pswitch_0
    return-void

    .line 432
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "explicit_option"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    const-string v2, "explicit"

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->syncSettings(Ljava/lang/String;I)V

    goto :goto_0

    .line 438
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/common/activity/CertificationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x7531

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 443
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchSamsungAccount(Landroid/content/Context;)Z

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 417
    const-string v1, "extra_action_code"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 418
    .local v0, "actionCode":I
    packed-switch v0, :pswitch_data_0

    .line 422
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0304

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 420
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
    .end packed-switch
.end method

.method public getPositiveText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 406
    const-string v1, "extra_action_code"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, "actionCode":I
    packed-switch v0, :pswitch_data_0

    .line 411
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a040e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 409
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0455

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a041a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method syncSettings(Ljava/lang/String;I)V
    .locals 5
    .param p1, "mapKey"    # Ljava/lang/String;
    .param p2, "settingValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 453
    .local v1, "settingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "mapValue":Ljava/lang/String;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v1, v4, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->saveSettings(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/HashMap;Ljava/util/ArrayList;Z)I

    .line 457
    return-void
.end method
