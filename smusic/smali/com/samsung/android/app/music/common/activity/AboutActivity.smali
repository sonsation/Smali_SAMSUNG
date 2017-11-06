.class public Lcom/samsung/android/app/music/common/activity/AboutActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "AboutActivity.java"


# static fields
.field private static final SAVED_STATE_CURRENT_VERSION:Ljava/lang/String; = "current_version"

.field private static final SAVED_STATE_NEED_TO_DATA_CHECK_DIALOG:Ljava/lang/String; = "need_to_data_check_dialog"

.field private static final SAVED_STATE_STATE_FOR_UPDATE:Ljava/lang/String; = "state_for_update"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentVersionName:Ljava/lang/String;

.field private final mDataCheckDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

.field private mNeedToDataCheckDialog:Z

.field private final mUpdateCheckResultListener:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

.field private mUpdateResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/common/activity/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateCheckResultListener:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .line 63
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_DATAPROMPT_POPUP:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mNeedToDataCheckDialog:Z

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/common/activity/AboutActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mDataCheckDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/AboutActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/AboutActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->updateStateAndViews(IZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/common/activity/AboutActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/AboutActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mNeedToDataCheckDialog:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/AboutActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->checkNeedToAppUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/activity/AboutActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/AboutActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    return v0
.end method

.method private checkNeedToAppUpdate()V
    .locals 4

    .prologue
    .line 286
    sget-object v0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->TAG:Ljava/lang/String;

    const-string v1, "checkNeedToAppUpdate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const v0, 0x7f1200ee

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->getInstance()Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.music"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateCheckResultListener:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->checkUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    .line 290
    return-void
.end method

.method private initAppInfoText()V
    .locals 3

    .prologue
    .line 120
    const v1, 0x7f1200f0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const v1, 0x7f1200eb

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    .local v0, "appInfo":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00a5

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v1, Lcom/samsung/android/app/music/common/activity/AboutActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity$3;-><init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method private initAppNameText()V
    .locals 2

    .prologue
    .line 115
    const v1, 0x7f1200ea

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, "appName":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method private initCurrentVersionText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 206
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mCurrentVersionName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.music"

    const/4 v4, 0x0

    .line 209
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mCurrentVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    const v2, 0x7f1200ec

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 215
    .local v1, "versionText":Landroid/widget/TextView;
    const v2, 0x7f0a0220

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mCurrentVersionName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void

    .line 210
    .end local v1    # "versionText":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/samsung/android/app/music/common/activity/AboutActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception -getting current version name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initLegalDescriptionText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_1

    .line 220
    const v2, 0x7f1200f5

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    .local v0, "legalTextView":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    const v2, 0x7f1200f4

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 224
    .local v1, "paddingBody":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->ABOUT:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->buildNotice(Landroid/widget/TextView;)V

    .line 229
    .end local v0    # "legalTextView":Landroid/widget/TextView;
    .end local v1    # "paddingBody":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private initLinkText(I)V
    .locals 6
    .param p1, "viewResId"    # I

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, "linkText":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    .local v2, "strText":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 173
    .local v0, "content":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a00a5

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v3, Lcom/samsung/android/app/music/common/activity/AboutActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity$6;-><init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method private initLinkTexts()V
    .locals 5

    .prologue
    const v4, 0x7f1200f2

    const v3, 0x7f1200f1

    .line 142
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->initLinkText(I)V

    .line 143
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->initLinkText(I)V

    .line 144
    const v2, 0x7f1200f3

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->initLinkText(I)V

    .line 145
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "privacy":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    new-instance v2, Lcom/samsung/android/app/music/common/activity/AboutActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity$4;-><init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "tnc":Landroid/view/View;
    new-instance v2, Lcom/samsung/android/app/music/common/activity/AboutActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity$5;-><init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .end local v0    # "privacy":Landroid/view/View;
    .end local v1    # "tnc":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    const-string v0, "current_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mCurrentVersionName:Ljava/lang/String;

    .line 309
    const-string/jumbo v0, "state_for_update"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    .line 310
    const-string v0, "need_to_data_check_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mNeedToDataCheckDialog:Z

    .line 312
    :cond_0
    return-void
.end method

.method private startMarketVersionCheck()V
    .locals 3

    .prologue
    .line 267
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mNeedToDataCheckDialog:Z

    if-eqz v1, :cond_2

    .line 268
    sget-object v1, Lcom/samsung/android/app/music/common/activity/AboutActivity;->TAG:Ljava/lang/String;

    const-string v2, "Try to show data check dialog for the CHN model"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "data_check_help_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 270
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mDataCheckDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->showDataCheckDialog(Landroid/app/Activity;Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mNeedToDataCheckDialog:Z

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->checkNeedToAppUpdate()V

    .line 283
    .end local v0    # "fg":Landroid/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 275
    .restart local v0    # "fg":Landroid/app/Fragment;
    :cond_1
    instance-of v1, v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .end local v0    # "fg":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mDataCheckDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->setOnDialogResultListener(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)V

    goto :goto_0

    .line 278
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->checkNeedToAppUpdate()V

    goto :goto_0

    .line 281
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->updateStateAndViews(IZ)V

    goto :goto_0
.end method

.method private updateStateAndViews(IZ)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 232
    sget-object v2, Lcom/samsung/android/app/music/common/activity/AboutActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateStateAndViews() - old-state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curr-state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", force-update : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-nez p2, :cond_1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    if-ne v2, p1, :cond_1

    .line 235
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/common/activity/AboutActivity;->TAG:Ljava/lang/String;

    const-string v3, "Ignore update!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 238
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    .line 239
    const v2, 0x7f1200ee

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    const v2, 0x7f1200ef

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    .local v1, "upgradeButton":Landroid/widget/TextView;
    const v2, 0x7f1200ed

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    .local v0, "detailMsgText":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget v2, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyManagerCompat;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    :cond_2
    const v2, 0x7f0a021c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 247
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_3
    const v2, 0x7f0a0127

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    new-instance v2, Lcom/samsung/android/app/music/common/activity/AboutActivity$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity$7;-><init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v3, 0x7f04001e

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->setContentView(I)V

    .line 82
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAboutAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 85
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_0

    .line 86
    const-string v3, "AboutSamsungMusic"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchAboutResponseExecutor;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchAboutResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v5, v4, v6

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->restoreState(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->startMarketVersionCheck()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->initAppNameText()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->initAppInfoText()V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->initCurrentVersionText()V

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->initLinkTexts()V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->initLegalDescriptionText()V

    .line 98
    if-nez p1, :cond_1

    .line 99
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "404"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 102
    :cond_1
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    if-eqz v3, :cond_2

    .line 103
    const-string v3, "music_player_pref"

    .line 104
    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 294
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->getInstance()Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.music"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateCheckResultListener:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->cancelCheck(Ljava/lang/String;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    .line 295
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 296
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 301
    const-string v0, "current_version"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mCurrentVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v0, "state_for_update"

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mUpdateResultCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v0, "need_to_data_check_dialog"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity;->mNeedToDataCheckDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    return-void
.end method
