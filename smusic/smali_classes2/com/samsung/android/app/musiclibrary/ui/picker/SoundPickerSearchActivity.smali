.class public Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SoundPickerSearchActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;
    }
.end annotation


# static fields
.field public static final EXTRA_PICK_MULTIPLE_ITEM:Ljava/lang/String; = "isMultiple"

.field private static final SAVED_INSTANCE_STATE_CHECKED_ITEM_IDS:Ljava/lang/String; = "saved_instance_state_checked_item_ids"


# instance fields
.field private mFragment:Landroid/app/Fragment;

.field private mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private mResultIntent:Landroid/content/Intent;

.field private mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

.field private mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private getSearchFragment()Landroid/app/Fragment;
    .locals 7

    .prologue
    const v6, 0x100025

    const v5, 0x100024

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 240
    .local v0, "fm":Landroid/app/FragmentManager;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v3, :cond_1

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 244
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 245
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    .line 246
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 247
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    move-result-object v1

    .line 248
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->music_list:I

    .line 249
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    move-object v2, v1

    .line 260
    .end local v1    # "fragment":Landroid/app/Fragment;
    .local v2, "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v2

    .line 253
    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 254
    .restart local v1    # "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_2

    .line 255
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;-><init>()V

    .line 256
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->music_list:I

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 258
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    move-object v2, v1

    .line 260
    .end local v1    # "fragment":Landroid/app/Fragment;
    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto :goto_0
.end method


# virtual methods
.method public addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 225
    return-void
.end method

.method public addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;
    .param p2, "hintSubmit"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V

    .line 231
    return-void
.end method

.method public getCheckedItemIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemIdsInArray()[J
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 134
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemIdsInArray(I)[J
    .locals 1
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 140
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray(I)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isItemChecked(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->isItemChecked(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 82
    .local v4, "i":Landroid/content/Intent;
    const-string v7, "isMultiple"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 84
    .local v6, "pickMultipleItem":Z
    if-eqz v6, :cond_1

    sget v7, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_picker_multiple_search_activity:I

    :goto_0
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->setContentView(I)V

    .line 87
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .line 89
    if-eqz v6, :cond_4

    .line 90
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;

    invoke-direct {v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 93
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;

    invoke-direct {v7, p0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 94
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "checkedItemIds":[J
    if-eqz p1, :cond_2

    .line 98
    const-string/jumbo v7, "saved_instance_state_checked_item_ids"

    .line 99
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 104
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 105
    array-length v9, v1

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_3

    aget-wide v2, v1, v7

    .line 106
    .local v2, "checkedItemId":J
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    const/4 v10, 0x1

    invoke-interface {v8, v2, v3, v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 84
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "checkedItemIds":[J
    .end local v2    # "checkedItemId":J
    :cond_1
    sget v7, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_picker_search_activity:I

    goto :goto_0

    .line 100
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "checkedItemIds":[J
    :cond_2
    if-eqz v0, :cond_0

    .line 101
    const-string v7, "extra_checked_item_ids"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_1

    .line 109
    :cond_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mResultIntent:Landroid/content/Intent;

    .line 112
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "checkedItemIds":[J
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getSearchFragment()Landroid/app/Fragment;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mFragment:Landroid/app/Fragment;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 115
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    sget v7, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    invoke-static {v5, v7}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    return-void
.end method

.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 125
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    .line 127
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "saved_instance_state_checked_item_ids"

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 73
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v1

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 236
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "value"    # Z

    .prologue
    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    .line 154
    .local v0, "checkedItemIds":[J
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mResultIntent:Landroid/content/Intent;

    const-string v2, "extra_checked_item_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 155
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    .end local v0    # "checkedItemIds":[J
    :cond_0
    return-void
.end method

.method public setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    .line 181
    :cond_0
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSearchViewImpl:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->setQueryText(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public updateCheckedItemIds(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "removeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->updateCheckedItemIds(Ljava/util/ArrayList;)V

    .line 174
    :cond_0
    return-void
.end method

.method public updateCheckedItems([J)V
    .locals 1
    .param p1, "checkedItemIds"    # [J

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->updateCheckedItems([J)V

    .line 188
    :cond_0
    return-void
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 199
    return-void
.end method
