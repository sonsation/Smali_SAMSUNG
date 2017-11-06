.class public Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;
.super Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;
.source "SeslShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareActivityChooserModelPolicy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field mOnShareTargetSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;

.field mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;-><init>(Landroid/content/Context;)V

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mMaxShownActivityCount:I

    .line 167
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 183
    const-string/jumbo v0, "share_history.xml"

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    .line 197
    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 3

    .prologue
    .line 381
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnShareTargetSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;

    if-nez v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnChooseActivityListener:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

    if-nez v1, :cond_1

    .line 385
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareActivityChooserModelPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnChooseActivityListener:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v0

    .line 388
    .local v0, "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnChooseActivityListener:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->setOnChooseActivityListener(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;)V

    goto :goto_0
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 7

    .prologue
    .line 220
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "activityChooserView":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v1

    .line 223
    .local v1, "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->setActivityChooserModel(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;)V

    .line 227
    .end local v1    # "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 228
    .local v3, "outTypedValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010479

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 229
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 230
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->setProvider(Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;)V

    .line 234
    sget v4, Lcom/samsung/android/support/sesl/R$string;->sesl_shareactionprovider_share_with_application:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 236
    sget v4, Lcom/samsung/android/support/sesl/R$string;->sesl_shareactionprovider_share_with:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 239
    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 10
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    const/4 v9, 0x0

    .line 256
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 258
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v2

    .line 259
    .local v2, "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 261
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->getActivityCount()I

    move-result v3

    .line 262
    .local v3, "expandedActivityCount":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 265
    .local v1, "collapsedActivityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 266
    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 267
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 268
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 269
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_0
    if-ge v1, v3, :cond_1

    .line 274
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/support/sesl/R$string;->sesl_activity_chooser_view_see_all:I

    .line 276
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 274
    invoke-interface {p1, v9, v1, v1, v7}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v4

    .line 277
    .local v4, "expandedSubMenu":Landroid/view/SubMenu;
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 278
    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 279
    .restart local v0    # "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v4, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 280
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 281
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 284
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "expandedSubMenu":Landroid/view/SubMenu;
    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnShareTargetSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 212
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareHistoryFile"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 321
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "shareIntent"    # Landroid/content/Intent;

    .prologue
    .line 340
    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 346
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v1

    .line 348
    .local v1, "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method updateIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 409
    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    return-void
.end method
