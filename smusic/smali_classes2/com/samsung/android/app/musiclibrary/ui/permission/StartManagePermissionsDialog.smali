.class public Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
.super Landroid/app/DialogFragment;
.source "StartManagePermissionsDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "start_manager_permissions_activity_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->launchApplicationDetailsSettings(Landroid/app/Activity;)V

    return-void
.end method

.method private checkPermissionAndDismissDialog()V
    .locals 7

    .prologue
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "required_permissions"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "requriedPermissions":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 179
    .local v1, "isAllRequiredPermissionGranted":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, "a":Landroid/app/Activity;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 181
    .local v2, "permission":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 180
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->dismiss()V

    .line 187
    instance-of v4, v0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 191
    :cond_2
    return-void
.end method

.method private getPermissionItemView(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;
    .locals 15
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    sget v13, Lcom/samsung/android/app/musiclibrary/R$layout;->list_item_dialog_permission_manage:I

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 124
    .local v7, "permissionItemView":Landroid/view/View;
    sget v12, Lcom/samsung/android/app/musiclibrary/R$id;->permission_name:I

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 127
    .local v6, "nameView":Landroid/widget/TextView;
    sget v12, Lcom/samsung/android/app/musiclibrary/R$id;->permission_icon:I

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 129
    .local v3, "iconView":Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 130
    .local v5, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .line 131
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 134
    .local v4, "imageId":I
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 135
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-nez v10, :cond_0

    .line 136
    const/4 v7, 0x0

    .line 160
    .end local v7    # "permissionItemView":Landroid/view/View;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v7

    .line 138
    .restart local v7    # "permissionItemView":Landroid/view/View;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/16 v12, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v9

    .line 139
    .local v9, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v12, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/16 v13, 0x1000

    .line 140
    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v8

    .line 141
    .local v8, "pgi":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 142
    .local v11, "res":Landroid/content/res/Resources;
    iget v12, v8, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    iget v12, v8, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v12, :cond_1

    .line 146
    iget v4, v8, Landroid/content/pm/PermissionGroupInfo;->icon:I

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 149
    sget v12, Lcom/samsung/android/app/musiclibrary/R$color;->dialog_permission_item_icon_winset:I

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    .line 150
    invoke-static {v11, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v12

    .line 149
    invoke-virtual {v2, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_1
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 153
    .end local v8    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v9    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 155
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private initView(Landroid/view/View;Landroid/app/AlertDialog;)V
    .locals 13
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v9, "required_permissions"

    .line 99
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "requriedPermissions":[Ljava/lang/String;
    sget v9, Lcom/samsung/android/app/musiclibrary/R$id;->dialog_main_text:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, "mainText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "app_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "permissionAppName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/app/musiclibrary/R$string;->request_permission_dialog_content:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    .line 105
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "requestPermissionText":Ljava/lang/String;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .local v8, "sp":Landroid/text/SpannableStringBuilder;
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 108
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    const/16 v12, 0x21

    .line 107
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 110
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v9, Lcom/samsung/android/app/musiclibrary/R$id;->dialog_permission_manage:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 112
    .local v1, "ll":Landroid/widget/LinearLayout;
    array-length v10, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v3, v7, v9

    .line 113
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {p0, v3, v11}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getPermissionItemView(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    .line 114
    .local v5, "permissionItemView":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "permission":Ljava/lang/String;
    .end local v5    # "permissionItemView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private launchApplicationDetailsSettings(Landroid/app/Activity;)V
    .locals 4
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 166
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SMUSIC-"

    const-string v3, "No app can handle ACTION_APPLICATION_DETAILS_SETTINGS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance([Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
    .locals 2
    .param p0, "requiredPermissions"    # [Ljava/lang/String;

    .prologue
    .line 42
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->app_name:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->newInstance([Ljava/lang/String;IZ)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([Ljava/lang/String;IZ)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
    .locals 3
    .param p0, "requiredPermissions"    # [Ljava/lang/String;
    .param p1, "appNameResId"    # I
    .param p2, "finishActivityIfCancel"    # Z

    .prologue
    .line 52
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;-><init>()V

    .line 53
    .local v1, "dialog":Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "required_permissions"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    const-string v2, "app_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v2, "args_finish_activity"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->setCancelable(Z)V

    .line 59
    return-object v1
.end method

.method public static newInstance([Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
    .locals 1
    .param p0, "requiredPermissions"    # [Ljava/lang/String;
    .param p1, "finishActivityIfCancel"    # Z

    .prologue
    .line 47
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->app_name:I

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->newInstance([Ljava/lang/String;IZ)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$layout;->dialog_permission_manage:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "rootView":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->detail_settings:I

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V

    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->cancel:I

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V

    .line 76
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 86
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->initView(Landroid/view/View;Landroid/app/AlertDialog;)V

    .line 87
    return-object v1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->checkPermissionAndDismissDialog()V

    .line 94
    return-void
.end method
