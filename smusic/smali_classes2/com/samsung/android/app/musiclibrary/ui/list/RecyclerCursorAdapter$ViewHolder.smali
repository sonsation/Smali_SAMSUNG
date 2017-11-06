.class public Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
.source "RecyclerCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final animateViewLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final animateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public checkBox:Landroid/widget/CheckBox;

.field public final hasCheckBox:Z

.field public final hasPrivateIcon:Z

.field public final hasReorder:Z

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public final menuItemButton:Landroid/view/View;

.field public final menuItemButtonGuideLine:Landroid/view/View;

.field public privateIcon:Landroid/widget/ImageView;

.field public final radioButton:Landroid/widget/RadioButton;

.field public reorderView:Landroid/view/View;

.field public final textView1:Landroid/widget/TextView;

.field public final textView2:Landroid/widget/TextView;

.field public final textView3:Landroid/widget/TextView;

.field public final thumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 11
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 992
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 982
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    .line 984
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    .line 994
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_stub:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    .line 995
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasCheckBox:Z

    .line 997
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->list_item_stub_private_icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->list_private_icon:I

    .line 998
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e

    :cond_1
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasPrivateIcon:Z

    .line 1000
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->list_item_stub_reorder:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->reorder:I

    .line 1001
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_f

    :cond_2
    move v4, v6

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasReorder:Z

    .line 1003
    if-lez p3, :cond_3

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1004
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 1007
    :cond_3
    if-lez p3, :cond_4

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2200(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1008
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 1011
    :cond_4
    if-gez p3, :cond_5

    .line 1012
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1013
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 1025
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1034
    :cond_5
    :goto_3
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1036
    .local v1, "res":Landroid/content/res/Resources;
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->text1:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    .line 1037
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 1038
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    .line 1039
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2400(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v8

    invoke-static {v1, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 1038
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1042
    :cond_6
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->text2:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    .line 1043
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 1044
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    .line 1045
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v8

    invoke-static {v1, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 1044
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1046
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2Index:I

    if-eq v4, v10, :cond_11

    move v4, v5

    .line 1047
    :goto_4
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    :cond_7
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->text3:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    .line 1051
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 1052
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    .line 1053
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2600(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v8

    invoke-static {v1, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 1052
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1054
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3Index:I

    if-eq v4, v10, :cond_12

    move v4, v5

    .line 1055
    :goto_5
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1058
    :cond_8
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1060
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_14

    .line 1061
    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailKeyIndex:I

    if-ne v4, v10, :cond_9

    .line 1062
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2700(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I

    move-result v4

    if-eq v4, v10, :cond_13

    .line 1063
    :cond_9
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1064
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 1073
    :goto_6
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->radio:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 1075
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail_layout:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1076
    .local v3, "thumbnailLayout":Landroid/view/View;
    if-eqz v3, :cond_a

    .line 1077
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->addAnimateView(Landroid/view/View;)V

    .line 1079
    :cond_a
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->text_layout:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1080
    .local v2, "textLayout":Landroid/view/View;
    if-eqz v2, :cond_15

    .line 1081
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->addAnimateView(Landroid/view/View;)V

    .line 1088
    :cond_b
    :goto_7
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1089
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->list_item_more_menu:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    .line 1090
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_item_more_menu:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButtonGuideLine:Landroid/view/View;

    .line 1091
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initItemMenuButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    .line 1097
    :goto_8
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_c

    if-ne p3, v6, :cond_c

    .line 1098
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4, p2}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1099
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$2;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1111
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$2900(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 1112
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 1123
    :cond_c
    return-void

    .end local v0    # "iv":Landroid/widget/ImageView;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "textLayout":Landroid/view/View;
    .end local v3    # "thumbnailLayout":Landroid/view/View;
    :cond_d
    move v4, v5

    .line 995
    goto/16 :goto_0

    :cond_e
    move v4, v5

    .line 998
    goto/16 :goto_1

    :cond_f
    move v4, v5

    .line 1001
    goto/16 :goto_2

    .line 1027
    :cond_10
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v4, :cond_5

    .line 1028
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1029
    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    goto/16 :goto_3

    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_11
    move v4, v7

    .line 1046
    goto/16 :goto_4

    :cond_12
    move v4, v7

    .line 1054
    goto/16 :goto_5

    .line 1066
    .restart local v0    # "iv":Landroid/widget/ImageView;
    :cond_13
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1067
    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    goto :goto_6

    .line 1070
    :cond_14
    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    goto/16 :goto_6

    .line 1083
    .restart local v2    # "textLayout":Landroid/view/View;
    .restart local v3    # "thumbnailLayout":Landroid/view/View;
    :cond_15
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    .line 1084
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->addAnimateView(Landroid/view/View;)V

    goto :goto_7

    .line 1093
    :cond_16
    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    .line 1094
    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButtonGuideLine:Landroid/view/View;

    goto :goto_8
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Landroid/view/View$OnGenericMotionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-object v0
.end method

.method private initItemMenuButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    :cond_0
    return-void
.end method


# virtual methods
.method protected addAnimateView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    return-void
.end method

.method protected initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 4
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mWinsetUiEnabled:Z

    if-eqz v1, :cond_0

    .line 1146
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1147
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    .line 1148
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1149
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1153
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    return-void

    .line 1151
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->ripple_list:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1178
    return-void
.end method
