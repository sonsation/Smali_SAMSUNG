.class public Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;
.super Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
.source "AppUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$AppUpdateDialogLauncher;,
        Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;
    }
.end annotation


# static fields
.field private static final KEY_FORCE_UPDATE:Ljava/lang/String; = "forceUpdate"

.field public static final LOG_TAG:Ljava/lang/String; = "AppUpdateDialog"


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

.field private mMarketClickListener:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private final referal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;-><init>()V

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    .line 58
    const-string/jumbo v0, "utm_source%3Dmilk%26utm_medium%3Ddeeplink%26utm_content%3Dmusichub%253A%252F%252Fmilkmusic.co.kr"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->referal:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method private getCustomView(Landroid/content/Context;Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 100
    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0400dc

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "customView":Landroid/view/View;
    const v7, 0x7f12028f

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "galaxyApps":Landroid/view/View;
    const v7, 0x7f120290

    .line 104
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 105
    .local v2, "galaxyAppsIcon":Landroid/widget/ImageView;
    const v7, 0x7f120291

    .line 106
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 107
    .local v3, "galaxyAppsName":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getGalaxyAppsIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getGalaxyAppsAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v7, 0x7f120292

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 112
    .local v4, "playStore":Landroid/view/View;
    const v7, 0x7f120293

    .line 113
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 114
    .local v5, "playStoreIcon":Landroid/widget/ImageView;
    const v7, 0x7f120294

    .line 115
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 116
    .local v6, "playStoreName":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getPlayStoreIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getPlayStoreAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    if-eqz p2, :cond_0

    .line 121
    sget-object v7, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$2;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->dismiss()V

    .line 170
    return-void

    .line 156
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->launchSamsungApps(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mMarketClickListener:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mMarketClickListener:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;->onMarketClick(I)V

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->referal:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->launchGooglePlay(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)Z

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mMarketClickListener:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mMarketClickListener:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;->onMarketClick(I)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x7f120290
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 67
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 72
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    .line 74
    .local v4, "forceUpdate":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 76
    sget-object v7, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TITLE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mTitle:Ljava/lang/String;

    .line 77
    sget-object v7, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MESSAGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mMessage:Ljava/lang/String;

    .line 78
    sget-object v7, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mType:Ljava/lang/String;

    .line 80
    const-string v7, "GOOGLE_PLAY_STORE_UPLOADED"

    const/4 v8, 0x1

    .line 81
    invoke-static {v2, v7, v8}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    .line 82
    .local v5, "playStoreUploaded":Z
    if-nez v5, :cond_0

    .line 83
    const-string v7, "1"

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mType:Ljava/lang/String;

    .line 85
    :cond_0
    const-string v7, "forceUpdate"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 87
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mType:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v6

    .line 88
    .local v6, "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getCustomView(Landroid/content/Context;Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 89
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a00d6

    new-instance v9, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)V

    .line 90
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    .end local v5    # "playStoreUploaded":Z
    .end local v6    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 93
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->setCancelable(Z)V

    .line 94
    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 95
    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    return-object v3
.end method

.method public setOnMarketClickListener(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->mMarketClickListener:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;

    .line 150
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 143
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 144
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 146
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method
