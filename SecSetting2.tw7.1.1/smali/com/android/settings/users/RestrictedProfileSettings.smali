.class public Lcom/android/settings/users/RestrictedProfileSettings;
.super Lcom/android/settings/users/AppRestrictionsFragment;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;


# instance fields
.field private mDeleteButton:Landroid/view/View;

.field private mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

.field private mHeaderView:Landroid/view/View;

.field private mInfoContainer:Landroid/view/View;

.field private mUserIconView:Landroid/widget/ImageView;

.field private mUserNameView:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->removeUser()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings/users/EditUserInfoController;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 41
    return-void
.end method

.method private removeUser()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/users/RestrictedProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/users/RestrictedProfileSettings$2;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 71
    const v1, 0x7f040370

    invoke-virtual {p0, v1}, Lcom/android/settings/users/RestrictedProfileSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v3, 0x7f110652

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mInfoContainer:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mInfoContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    .line 75
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v3, 0x7f11069b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mDeleteButton:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 82
    .local v11, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 83
    .local v12, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a055a

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    const v3, 0x7f0a054e

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 83
    add-int/2addr v1, v3

    .line 85
    const v3, 0x7f0a0023

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 83
    add-int v4, v1, v3

    .line 86
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 88
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    return-void

    .line 90
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 91
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mInfoContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/RestrictedProfileSettings;->showDialog(I)V

    .line 133
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mDeleteButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 137
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/users/RestrictedProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/users/RestrictedProfileSettings;->init(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100336

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 58
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "dialogId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p1, v3, :cond_3

    .line 146
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 147
    .local v9, "user":Landroid/content/pm/UserInfo;
    const/4 v8, 0x0

    .line 148
    .local v8, "isDefaultIcon":Z
    iget-object v0, v9, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v9, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    const/4 v8, 0x1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    if-eqz v8, :cond_2

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 153
    iget-object v6, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    .line 152
    const v4, 0x7f0b1423

    move-object v1, p0

    move-object v5, p0

    .line 151
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 154
    .end local v8    # "isDefaultIcon":Z
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 155
    invoke-static {}, Lcom/android/settings/Utils;->isOnCall()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0eb0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_4
    return-object v2

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 160
    new-instance v2, Lcom/android/settings/users/RestrictedProfileSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/users/RestrictedProfileSettings$1;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;)V

    .line 159
    invoke-static {v0, v1, v2}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v7

    .line 166
    .local v7, "dlg":Landroid/app/Dialog;
    return-object v7
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->onResume()V

    .line 109
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 110
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->finishFragment()V

    .line 105
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2, v3, v0}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->startingActivityForResult()V

    .line 122
    invoke-super {p0, p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    return-void
.end method
