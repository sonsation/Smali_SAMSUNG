.class public Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;
.super Landroid/app/DialogFragment;
.source "UpdateApplicationDialog.java"


# static fields
.field private static final SHOW_CHECK_BOX:Ljava/lang/String; = "show_check_box"

.field public static final TAG:Ljava/lang/String;

.field private static final UPDATABLE_GOOGLE_PLAY:Ljava/lang/String; = "updatable_google_play"


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->launchSamsungApps()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->launchGooglePlay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->exitDialog()V

    return-void
.end method

.method private exitDialog()V
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "force_update"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 171
    .local v1, "forceUpdate":Z
    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->stopMusicApplication()V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->dismiss()V

    goto :goto_0
.end method

.method public static getNewInstance(ZZZ)Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;
    .locals 3
    .param p0, "forceUpdate"    # Z
    .param p1, "showCheckBox"    # Z
    .param p2, "updatableGooglePlay"    # Z

    .prologue
    .line 63
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;-><init>()V

    .line 64
    .local v1, "dialog":Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "force_update"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string/jumbo v2, "show_check_box"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    const-string/jumbo v2, "updatable_google_play"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method

.method private launchGooglePlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "referrer"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    if-eqz p2, :cond_0

    .line 200
    const-string v3, "&referrer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchGooglePlay url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 205
    .local v1, "goToMarket":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 209
    :cond_1
    return-void
.end method

.method private launchSamsungApps()V
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiP2PEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->getInstance()Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.music"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->launchDownloadPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    const v1, 0x7f0a0135

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private stopMusicApplication()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    .line 180
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->exitDialog()V

    .line 165
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 166
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 75
    .local v4, "args":Landroid/os/Bundle;
    const-string v22, "force_update"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 76
    .local v8, "forceUpdate":Z
    const-string/jumbo v22, "show_check_box"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 77
    .local v20, "useCheckBox":Z
    const-string/jumbo v22, "updatable_google_play"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 79
    .local v19, "updatableGooglePlay":Z
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "appName":Ljava/lang/String;
    const v22, 0x7f0a021e

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v3, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 84
    if-eqz v8, :cond_3

    .line 85
    const v22, 0x7f0a0098

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v3, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 89
    .local v15, "messageText":Ljava/lang/String;
    :goto_0
    sget-object v22, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onCreateDialog updatableGooglePlay: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 93
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 94
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v22, 0x7f040051

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 95
    .local v21, "view":Landroid/view/View;
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v22, 0x7f12016b

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 97
    .local v14, "message":Landroid/widget/TextView;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    if-eqz v19, :cond_0

    .line 100
    const v22, 0x7f12016c

    .line 101
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 102
    .local v13, "marketChooserFrameLayout":Landroid/widget/LinearLayout;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    const v22, 0x7f12016e

    .line 104
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 105
    .local v9, "galaxyAppsImageView":Landroid/widget/ImageView;
    const v22, 0x7f12016f

    .line 106
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 107
    .local v11, "galaxyAppsNameTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const-string v22, "com.sec.android.app.samsungapps"

    .line 110
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/samsung/android/app/music/common/update/AppMarketUpdateUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 109
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    const-string v22, "com.sec.android.app.samsungapps"

    .line 112
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/samsung/android/app/music/common/update/AppMarketUpdateUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "galaxyAppsName":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v22, 0x7f120171

    .line 116
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 117
    .local v16, "playStoreImageView":Landroid/widget/ImageView;
    const v22, 0x7f120172

    .line 118
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 119
    .local v18, "playStoreTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const-string v22, "com.android.vending"

    .line 122
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/samsung/android/app/music/common/update/AppMarketUpdateUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 121
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    const-string v22, "com.android.vending"

    .line 124
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/samsung/android/app/music/common/update/AppMarketUpdateUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, "playStoreName":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .end local v9    # "galaxyAppsImageView":Landroid/widget/ImageView;
    .end local v10    # "galaxyAppsName":Ljava/lang/String;
    .end local v11    # "galaxyAppsNameTextView":Landroid/widget/TextView;
    .end local v13    # "marketChooserFrameLayout":Landroid/widget/LinearLayout;
    .end local v16    # "playStoreImageView":Landroid/widget/ImageView;
    .end local v17    # "playStoreName":Ljava/lang/String;
    .end local v18    # "playStoreTextView":Landroid/widget/TextView;
    :cond_0
    if-eqz v20, :cond_1

    .line 129
    const v22, 0x7f1200c9

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 130
    .local v6, "checkBox":Landroid/widget/CheckBox;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 131
    new-instance v22, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$2;-><init>(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    .end local v6    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    const v22, 0x7f0a00d6

    new-instance v23, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$3;-><init>(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    if-nez v8, :cond_2

    .line 151
    const v22, 0x7f0a021d

    new-instance v23, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$4;-><init>(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    :cond_2
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    return-object v22

    .line 87
    .end local v7    # "context":Landroid/content/Context;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "message":Landroid/widget/TextView;
    .end local v15    # "messageText":Ljava/lang/String;
    .end local v21    # "view":Landroid/view/View;
    :cond_3
    const v22, 0x7f0a013d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "messageText":Ljava/lang/String;
    goto/16 :goto_0
.end method
