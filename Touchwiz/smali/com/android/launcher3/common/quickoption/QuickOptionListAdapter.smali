.class public Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickOptionListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/quickoption/QuickOptionListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "context"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 53
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 54
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 55
    const v5, 0x7f04004e

    invoke-virtual {v1, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 81
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    return-object p2

    .line 57
    :cond_0
    const v5, 0x7f04004d

    invoke-virtual {v1, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 58
    .local v2, "menuView":Landroid/widget/LinearLayout;
    const v5, 0x7f1100ec

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 60
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getType()I

    move-result v5

    if-nez v5, :cond_3

    .line 61
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getIconRsrId()I

    move-result v5

    const v6, 0x7f0200e1

    if-ne v5, v6, :cond_1

    .line 62
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/util/SecureFolderHelper;->getSecureFolderTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    const v6, 0x7f0900a8

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .end local v3    # "title":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getIconRsrId()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 77
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 78
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 79
    move-object p2, v2

    goto :goto_0

    .line 65
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v5

    const v6, 0x7f0900a1

    if-ne v5, v6, :cond_2

    .line 66
    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 68
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 73
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    .line 93
    .local v0, "item":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 98
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 99
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertQOEventLog(ILcom/android/launcher3/Launcher;)V

    .line 100
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->isOptionRemove()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->createItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    move-result-object v1

    .line 102
    .local v1, "itemRemoveAnimation":Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;Lcom/android/launcher3/common/quickoption/QuickOptionListItem;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v1    # "itemRemoveAnimation":Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    goto :goto_0

    .line 120
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getShortcutKey()Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->startShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "id"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    .line 129
    .local v0, "item":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 130
    const/4 v4, 0x0

    .line 135
    :goto_0
    return v4

    .line 132
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v1

    .line 133
    .local v1, "manager":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getShortcutKey()Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForShortcutKey(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    move-result-object v3

    .line 134
    .local v3, "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .line 135
    .local v2, "quickOptionView":Lcom/android/launcher3/common/quickoption/QuickOptionView;
    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->onItemLongClick(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Z

    move-result v4

    goto :goto_0
.end method

.method setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/QuickOptionListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/QuickOptionListItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
