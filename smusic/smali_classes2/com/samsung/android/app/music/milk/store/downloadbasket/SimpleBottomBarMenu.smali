.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;
.super Ljava/lang/Object;
.source "SimpleBottomBarMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;
    }
.end annotation


# instance fields
.field private final mBottomBarMenuAnimator:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

.field private final mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

.field private final mBottomBarRootView:Landroid/view/ViewGroup;

.field private mIsShown:Z


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;Landroid/view/Menu;Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "animator"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;
    .param p3, "menu"    # Landroid/view/Menu;
    .param p4, "bottomBarMenuViewable"    # Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mIsShown:Z

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarRootView:Landroid/view/ViewGroup;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarMenuAnimator:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    .line 109
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private isShown()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mIsShown:Z

    return v0
.end method

.method public static newInstance(Landroid/app/Activity;Landroid/view/Menu;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;
    .locals 21
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

    .prologue
    .line 39
    const v17, 0x7f120007

    .line 40
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 41
    .local v14, "stub":Landroid/view/View;
    instance-of v0, v14, Landroid/view/ViewStub;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 42
    check-cast v14, Landroid/view/ViewStub;

    .end local v14    # "stub":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 47
    .local v13, "rootView":Landroid/view/ViewGroup;
    :goto_0
    if-nez v13, :cond_1

    .line 48
    const/16 v17, 0x0

    .line 101
    :goto_1
    return-object v17

    .line 44
    .end local v13    # "rootView":Landroid/view/ViewGroup;
    .restart local v14    # "stub":Landroid/view/View;
    :cond_0
    const v17, 0x7f1204c2

    .line 45
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .restart local v13    # "rootView":Landroid/view/ViewGroup;
    goto :goto_0

    .line 51
    .end local v14    # "stub":Landroid/view/View;
    :cond_1
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v11, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v12

    .line 55
    .local v12, "menuSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v12, :cond_2

    .line 56
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 58
    :cond_2
    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    invoke-direct {v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;-><init>()V

    .line 59
    .local v3, "animator":Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/MenuItem;

    .line 60
    .local v10, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v10}, Landroid/view/MenuItem;->getGroupId()I

    move-result v18

    const v19, 0x7f120014

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 62
    invoke-interface {v10}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    .line 63
    .local v8, "id":I
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 64
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-interface {v10}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    .line 67
    .local v15, "title":Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f0401b1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 70
    .local v9, "itemView":Landroid/view/View;
    invoke-virtual {v9, v8}, Landroid/view/View;->setId(I)V

    .line 72
    const v18, 0x7f1204c3

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 74
    .local v7, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    const v18, 0x7f1204c4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 78
    .local v16, "titleView":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    .line 81
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 80
    invoke-static/range {v18 .. v19}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 79
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->addScaleAlphaAnimationView(Landroid/view/View;)V

    .line 86
    new-instance v18, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;Landroid/view/MenuItem;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 94
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "iconView":Landroid/widget/ImageView;
    .end local v8    # "id":I
    .end local v9    # "itemView":Landroid/view/View;
    .end local v10    # "menuItem":Landroid/view/MenuItem;
    .end local v15    # "title":Ljava/lang/CharSequence;
    .end local v16    # "titleView":Landroid/widget/TextView;
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v17

    if-nez v17, :cond_5

    .line 95
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 97
    :cond_5
    const/4 v4, 0x0

    .line 98
    .local v4, "bottomBarMenuViewable":Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v4, p0

    .line 99
    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    .line 101
    :cond_6
    new-instance v17, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v3, v1, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;Landroid/view/Menu;Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mIsShown:Z

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarMenuAnimator:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->hide(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;->onBottomBarMenuDestroyed()Z

    .line 136
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mIsShown:Z

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarMenuViewable:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;->onBottomBarMenuCreated()Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->mBottomBarMenuAnimator:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->show()V

    .line 121
    :cond_1
    return-void
.end method
