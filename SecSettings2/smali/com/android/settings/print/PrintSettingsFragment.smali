.class public Lcom/android/settings/print/PrintSettingsFragment;
.super Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$1;,
        Lcom/android/settings/print/PrintSettingsFragment$2;,
        Lcom/android/settings/print/PrintSettingsFragment$3;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

.field private mAddNewServiceButton:Landroid/widget/Button;

.field private mAddNewServicePreference:Landroid/preference/Preference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmptyView:Landroid/view/View;

.field private mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/preference/PreferenceCategory;

.field private mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;


# direct methods
.method static synthetic -get0(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/print/PrintJobInfo;)Z
    .locals 1
    .param p0, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    invoke-static {p0}, Lcom/android/settings/print/PrintSettingsFragment;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "enable"    # Ljava/lang/Boolean;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment;->enablePrinterPluginService(Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 656
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {v0}, Lcom/android/settings/print/PrintSettingsFragment$1;-><init>()V

    .line 655
    sput-object v0, Lcom/android/settings/print/PrintSettingsFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 665
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$2;

    invoke-direct {v0}, Lcom/android/settings/print/PrintSettingsFragment$2;-><init>()V

    .line 664
    sput-object v0, Lcom/android/settings/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;-><init>()V

    .line 728
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 78
    return-void
.end method

.method private createAddNewServiceIntentOrNull()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 344
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const/4 v1, 0x0

    return-object v1

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 348
    const-string/jumbo v2, "print_service_search_uri"

    .line 347
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "searchUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "market://search?q=print service plugin"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1

    .line 352
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private static enablePrinterPluginService(Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 596
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v1, "print"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 597
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 596
    invoke-virtual {v1, v0, v2}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 594
    return-void
.end method

.method private newAddServicePreferenceOrNull()Landroid/preference/Preference;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 307
    return-object v2

    .line 309
    :cond_0
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 310
    .local v1, "preference":Landroid/preference/Preference;
    const v2, 0x7f0b15c9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 311
    const v2, 0x7f02058f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 312
    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 314
    const-string/jumbo v2, "print_add_plug_in"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 315
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 318
    new-instance v2, Lcom/android/settings/print/PrintSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings/print/PrintSettingsFragment$4;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 340
    return-object v1
.end method

.method private static shouldShowToUser(Landroid/print/PrintJobInfo;)Z
    .locals 1
    .param p0, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 591
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 588
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startSubSettingsIfNeeded()V
    .locals 4

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 363
    .local v1, "prereference":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 355
    .end local v1    # "prereference":Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0b1815

    return v0
.end method

.method protected getIntentActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string/jumbo v0, "android.settings.ACTION_PRINT_SETTINGS"

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x50

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    if-ne v2, p1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 373
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0    # "addNewServiceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 376
    .restart local v0    # "addNewServiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "PrintSettingsFragment"

    const-string/jumbo v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 138
    const-string/jumbo v0, "print_jobs_category"

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    .line 140
    const-string/jumbo v0, "print_services_category"

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Landroid/preference/Preference;

    .line 144
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_0
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 151
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 155
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 133
    return-void
.end method

.method protected onDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onDataSetChanged()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Printing"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Printing"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onStart()V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    .line 177
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onStop()V

    .line 184
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 190
    invoke-super {p0, p1, p2}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 192
    .local v1, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 193
    const v4, 0x7f0400eb

    .line 192
    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    .line 194
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f11018c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 195
    .local v2, "textView":Landroid/widget/TextView;
    const v3, 0x7f0b15c3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 199
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f110350

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    .line 200
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/settings/print/PrintSettingsFragment;->setEmptyView(Landroid/view/View;)V

    .line 189
    return-void
.end method
