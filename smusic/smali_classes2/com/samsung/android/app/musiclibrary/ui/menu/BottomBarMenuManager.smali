.class public Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;
.super Ljava/lang/Object;
.source "BottomBarMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;,
        Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;,
        Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBottomBarMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

.field private final mBottomBarMenuAnimator:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;

.field private final mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

.field private final mBottomBarRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "animator"    # Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;
    .param p3, "menu"    # Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;
    .param p4, "bottomBarMenuViewable"    # Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->TAG:Ljava/lang/String;

    const-string v1, "BottomBarMenuManager()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarRootView:Landroid/view/ViewGroup;

    .line 132
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

    .line 133
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenuAnimator:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;

    .line 134
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;->onBottomBarMenuCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenuAnimator:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;->show()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Landroid/view/Menu;Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;
    .locals 23
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "mode"    # Landroid/view/ActionMode;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    sget v19, Lcom/samsung/android/app/musiclibrary/R$id;->bottom_bar_stub:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 57
    .local v16, "stub":Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/ViewStub;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 58
    check-cast v16, Landroid/view/ViewStub;

    .end local v16    # "stub":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 62
    .local v15, "rootView":Landroid/view/ViewGroup;
    :goto_0
    if-nez v15, :cond_1

    .line 63
    const/16 v19, 0x0

    .line 123
    :goto_1
    return-object v19

    .line 60
    .end local v15    # "rootView":Landroid/view/ViewGroup;
    .restart local v16    # "stub":Landroid/view/View;
    :cond_0
    sget v19, Lcom/samsung/android/app/musiclibrary/R$id;->bottom_bar_root:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .restart local v15    # "rootView":Landroid/view/ViewGroup;
    goto :goto_0

    .line 66
    .end local v16    # "stub":Landroid/view/View;
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v12, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v13

    .line 68
    .local v13, "menuSize":I
    sget-object v19, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "menuSize: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v13, :cond_2

    .line 70
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 73
    :cond_2
    const/4 v4, 0x0

    .line 74
    .local v4, "bottomBarMenuCount":I
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 75
    .local v14, "modifiedMenuItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/MenuItem;>;"
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;-><init>()V

    .line 76
    .local v3, "animator":Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MenuItem;

    .line 77
    .local v11, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v11}, Landroid/view/MenuItem;->getGroupId()I

    move-result v20

    sget v21, Lcom/samsung/android/app/musiclibrary/R$id;->menu_group_bottom_bar:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 78
    sget-object v20, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BottomBar menuItem: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 81
    invoke-interface {v11}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    .line 82
    .local v9, "id":I
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 83
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    invoke-interface {v11}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    .line 84
    .local v17, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/view/Menu;->removeItem(I)V

    .line 86
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    sget v21, Lcom/samsung/android/app/musiclibrary/R$layout;->music_ui_bottom_bar_item:I

    const/16 v22, 0x0

    .line 87
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v15, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 88
    .local v10, "itemView":Landroid/view/View;
    invoke-virtual {v10, v9}, Landroid/view/View;->setId(I)V

    .line 90
    sget v20, Lcom/samsung/android/app/musiclibrary/R$id;->bottom_bar_item_icon:I

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 91
    .local v8, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    sget v20, Lcom/samsung/android/app/musiclibrary/R$id;->bottom_bar_item_title:I

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 93
    .local v18, "titleView":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    .line 96
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 95
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 94
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v3, v8}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;->addScaleAlphaAnimationView(Landroid/view/View;)V

    .line 102
    new-instance v20, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;-><init>(Landroid/view/ActionMode$Callback;Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v20, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v10}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;-><init>(Landroid/view/MenuItem;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v9, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 110
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "iconView":Landroid/widget/ImageView;
    .end local v9    # "id":I
    .end local v10    # "itemView":Landroid/view/View;
    .end local v17    # "title":Ljava/lang/CharSequence;
    .end local v18    # "titleView":Landroid/widget/TextView;
    :cond_3
    invoke-interface {v11}, Landroid/view/MenuItem;->getItemId()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 113
    .end local v11    # "menuItem":Landroid/view/MenuItem;
    :cond_4
    sget-object v19, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "newInstance() - bottomBarMenuCount: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-eqz v19, :cond_5

    if-nez v4, :cond_6

    .line 115
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 117
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    const/4 v5, 0x0

    .line 120
    .local v5, "bottomBarMenuViewable":Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v5, p0

    .line 121
    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    .line 123
    :cond_7
    new-instance v19, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    new-instance v20, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;-><init>(Landroid/view/Menu;Landroid/util/SparseArray;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v15, v3, v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenuAnimator:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuAnimator;->hide(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;->onBottomBarMenuDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->mBottomBarRootView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method
