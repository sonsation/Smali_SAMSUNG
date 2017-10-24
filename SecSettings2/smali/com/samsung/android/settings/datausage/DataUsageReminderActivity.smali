.class public Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "DataUsageReminderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;,
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;,
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

.field private mContext:Landroid/content/Context;

.field private mDescView:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mMobileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWlanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    .line 68
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 139
    packed-switch p2, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    goto :goto_0

    .line 144
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.NETWORKMANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "networkManagerIntent":Landroid/content/Intent;
    const-string/jumbo v1, "is_from_datausage_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "uids"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    .line 86
    const-string/jumbo v4, "wlan"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    .line 87
    const-string/jumbo v4, "mobile"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    .line 88
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 89
    :cond_0
    const-string/jumbo v4, "DataUsageReminderActivity_YIN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Extra Error mUidList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mWlanList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mMobileList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    .line 93
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "datausage"

    invoke-virtual {v4, v5, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 94
    .local v2, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 96
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b3

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 97
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mListView:Landroid/widget/ListView;

    .line 98
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f11027c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mDescView:Landroid/widget/TextView;

    .line 100
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 101
    .local v3, "um":Landroid/os/UserManager;
    new-instance v4, Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 103
    new-instance v4, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v4, p0, v3, v5, v12}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;-><init>(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;Landroid/os/UserManager;Lcom/android/settingslib/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    .line 104
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->bindStats()V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0f92

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b107b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 109
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0cc7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 112
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 114
    :cond_2
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->setupAlert()V

    .line 118
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mDescView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 119
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "totalBytes"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    .line 118
    const v7, 0x7f0b0f94

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    .line 130
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    .line 124
    return-void
.end method
