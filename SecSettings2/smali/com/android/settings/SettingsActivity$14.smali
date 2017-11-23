.class Lcom/android/settings/SettingsActivity$14;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initializeLayoutBySplitBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 2864
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2867
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2868
    .local v2, "action":I
    const/16 v22, 0x0

    .line 2869
    .local v22, "splitBar":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 2870
    const v31, 0x7f0a0613

    .line 2869
    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v21, v0

    .line 2871
    .local v21, "snapCenterPosition":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2873
    .local v3, "d":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f100364

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    .line 2872
    const/16 v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v25

    .line 2874
    .local v25, "splitXinFullview":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 2875
    const v31, 0x7f0a0597

    .line 2874
    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 2876
    .local v6, "leftPaneMinSize":I
    const/4 v15, 0x0

    .line 2877
    .local v15, "newSplitBarCenterPosX":F
    const/16 v17, 0x0

    .line 2878
    .local v17, "parentLayoutWidth":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 2879
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 2882
    .end local v22    # "splitBar":Landroid/view/View;
    :cond_0
    if-nez v22, :cond_1

    .line 2883
    const/16 v30, 0x0

    return v30

    .line 2886
    :cond_1
    if-nez v2, :cond_4

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 2889
    const v31, 0x7f02059e

    .line 2888
    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 3046
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get7(Lcom/android/settings/SettingsActivity;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 3047
    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-set3(Z)Z

    .line 3049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get2(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 3051
    .local v9, "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 3054
    .local v19, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3055
    .local v7, "leftPanelWeight":F
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v18, v0

    .line 3056
    .local v18, "rightPanelWeight":F
    add-float v28, v7, v18

    .line 3058
    .local v28, "weightSum":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v8, v15, v30

    .line 3060
    .local v8, "leftPanelWidthRatio":F
    mul-float v11, v28, v8

    .line 3061
    .local v11, "newLeftPanelWeight":F
    sub-float v13, v28, v11

    .line 3063
    .local v13, "newRightPanelWeight":F
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3064
    move-object/from16 v0, v19

    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3066
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v31, v11, v28

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v12, v0

    .line 3067
    .local v12, "newLeftPanelWidth":I
    sub-int v14, v17, v12

    .line 3068
    .local v14, "newRightPanelWidth":I
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3069
    move-object/from16 v0, v19

    iput v14, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3071
    invoke-static {}, Lcom/android/settings/SettingsActivity;->-get1()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get2(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3078
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 3080
    .end local v7    # "leftPanelWeight":F
    .end local v8    # "leftPanelWidthRatio":F
    .end local v9    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "newLeftPanelWeight":F
    .end local v12    # "newLeftPanelWidth":I
    .end local v13    # "newRightPanelWeight":F
    .end local v14    # "newRightPanelWidth":I
    .end local v18    # "rightPanelWeight":F
    .end local v19    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "weightSum":F
    :cond_3
    const/16 v30, 0x1

    return v30

    .line 2891
    :cond_4
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v2, v0, :cond_14

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v23

    .line 2893
    .local v23, "splitBarwidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    .line 2894
    .local v26, "touchX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getX()F

    move-result v16

    .line 2895
    .local v16, "newSplitBarPosX":F
    add-float v27, v16, v26

    .line 2897
    .local v27, "touchXInParentRect":F
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v15, v16, v30

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    check-cast v30, Landroid/view/View;

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 2900
    invoke-static {}, Lcom/android/settings/SettingsActivity;->-get1()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 2902
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v5, v30, v25

    .line 2903
    .local v5, "fullViewPosX":F
    sub-int v30, v17, v6

    move/from16 v0, v30

    int-to-float v10, v0

    .line 2904
    .local v10, "minumPosition":F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v26, v30

    if-lez v30, :cond_8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v30, v27, v30

    if-gtz v30, :cond_8

    .line 2906
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v26, v30

    add-float v15, v15, v30

    .line 2908
    cmpl-float v30, v15, v10

    if-lez v30, :cond_6

    .line 2909
    add-float v30, v10, v21

    cmpg-float v30, v15, v30

    if-gtz v30, :cond_6

    .line 2910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get2(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v30

    move/from16 v0, v30

    if-le v0, v6, :cond_5

    .line 2911
    move v15, v10

    .line 2912
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v10, v30

    .line 2913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2916
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    goto/16 :goto_0

    .line 2918
    :cond_6
    add-float v30, v10, v21

    cmpl-float v30, v15, v30

    if-lez v30, :cond_7

    .line 2919
    cmpg-float v30, v15, v5

    if-gtz v30, :cond_7

    .line 2920
    move v15, v5

    .line 2921
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v5, v30

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2924
    :cond_7
    cmpg-float v30, v15, v10

    if-gtz v30, :cond_2

    .line 2925
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2930
    :cond_8
    const/16 v30, 0x0

    cmpg-float v30, v26, v30

    if-gez v30, :cond_2

    const/16 v30, 0x0

    cmpl-float v30, v27, v30

    if-ltz v30, :cond_2

    .line 2932
    add-float v15, v15, v26

    .line 2934
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v24, v15, v30

    .line 2901
    .local v24, "splitRatio":F
    const v30, 0x3eae147a    # 0.33999997f

    .line 2936
    cmpg-float v30, v24, v30

    if-gez v30, :cond_9

    .line 2937
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    .line 2901
    const v31, 0x3eae147a    # 0.33999997f

    .line 2937
    mul-float v15, v30, v31

    .line 2938
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2941
    :cond_9
    add-float v30, v10, v21

    cmpl-float v30, v15, v30

    if-lez v30, :cond_a

    .line 2942
    cmpg-float v30, v15, v5

    if-gtz v30, :cond_a

    .line 2943
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    goto/16 :goto_0

    .line 2945
    :cond_a
    add-float v30, v10, v21

    cmpg-float v30, v15, v30

    if-gtz v30, :cond_b

    .line 2946
    cmpl-float v30, v15, v10

    if-lez v30, :cond_b

    .line 2947
    move v15, v10

    .line 2948
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v10, v30

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2952
    :cond_b
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2958
    .end local v5    # "fullViewPosX":F
    .end local v10    # "minumPosition":F
    .end local v24    # "splitRatio":F
    :cond_c
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v26, v30

    if-lez v30, :cond_10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v30, v27, v30

    if-gtz v30, :cond_10

    .line 2960
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v26, v30

    add-float v15, v15, v30

    .line 2962
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v24, v15, v30

    .line 2963
    .restart local v24    # "splitRatio":F
    const v30, 0x3f28f5c3    # 0.66f

    cmpl-float v30, v24, v30

    if-lez v30, :cond_d

    .line 2964
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    const v31, 0x3f28f5c3    # 0.66f

    mul-float v15, v30, v31

    .line 2965
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2968
    :cond_d
    cmpg-float v30, v15, v21

    if-gtz v30, :cond_e

    .line 2969
    cmpl-float v30, v15, v25

    if-lez v30, :cond_e

    .line 2970
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    goto/16 :goto_0

    .line 2972
    :cond_e
    cmpl-float v30, v15, v21

    if-lez v30, :cond_f

    .line 2973
    int-to-float v0, v6

    move/from16 v30, v0

    cmpg-float v30, v15, v30

    if-gtz v30, :cond_f

    .line 2974
    int-to-float v15, v6

    .line 2975
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2979
    :cond_f
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2984
    .end local v24    # "splitRatio":F
    :cond_10
    const/16 v30, 0x0

    cmpg-float v30, v26, v30

    if-gez v30, :cond_2

    const/16 v30, 0x0

    cmpl-float v30, v27, v30

    if-ltz v30, :cond_2

    .line 2985
    add-float v15, v15, v26

    .line 2987
    int-to-float v0, v6

    move/from16 v30, v0

    cmpg-float v30, v15, v30

    if-gtz v30, :cond_12

    .line 2988
    cmpl-float v30, v15, v21

    if-lez v30, :cond_12

    .line 2989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get2(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v30

    move/from16 v0, v30

    if-le v0, v6, :cond_11

    .line 2990
    int-to-float v15, v6

    .line 2991
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2995
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    goto/16 :goto_0

    .line 2997
    :cond_12
    cmpg-float v30, v15, v21

    if-gtz v30, :cond_13

    .line 2998
    cmpl-float v30, v15, v25

    if-lez v30, :cond_13

    .line 2999
    move/from16 v15, v25

    .line 3000
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v25, v30

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 3003
    :cond_13
    int-to-float v0, v6

    move/from16 v30, v0

    cmpl-float v30, v15, v30

    if-lez v30, :cond_2

    .line 3004
    div-int/lit8 v30, v23, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v16, v15, v30

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 3010
    .end local v16    # "newSplitBarPosX":F
    .end local v23    # "splitBarwidth":I
    .end local v26    # "touchX":F
    .end local v27    # "touchXInParentRect":F
    :cond_14
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v2, v0, :cond_16

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get2(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 3015
    .restart local v9    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/settings/SettingsActivity;->-get5()F

    move-result v30

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v31, v0

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_15

    .line 3016
    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-set1(F)F

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    .line 3019
    const-string/jumbo v31, "com.android.settings_preferences"

    const/16 v32, 0x4

    .line 3018
    invoke-virtual/range {v30 .. v32}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 3020
    .local v20, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 3021
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v30, "split_bar_left_wegigh"

    invoke-static {}, Lcom/android/settings/SettingsActivity;->-get5()F

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 3022
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3026
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 3027
    const v31, 0x7f02059d

    .line 3026
    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .line 3031
    .end local v9    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getX()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v29, v30, v31

    .line 3032
    .local v29, "x":F
    const/16 v30, 0x0

    cmpg-float v30, v29, v30

    if-gez v30, :cond_17

    .line 3033
    const/16 v29, 0x0

    .line 3035
    :cond_17
    const/16 v30, 0x3

    move/from16 v0, v30

    if-eq v2, v0, :cond_18

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 3038
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Z)Z

    .line 3041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 3042
    const v31, 0x7f02059d

    .line 3041
    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3075
    .end local v29    # "x":F
    .restart local v7    # "leftPanelWeight":F
    .restart local v8    # "leftPanelWidthRatio":F
    .restart local v9    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11    # "newLeftPanelWeight":F
    .restart local v12    # "newLeftPanelWidth":I
    .restart local v13    # "newRightPanelWeight":F
    .restart local v14    # "newRightPanelWidth":I
    .restart local v18    # "rightPanelWeight":F
    .restart local v19    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v28    # "weightSum":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get2(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$14;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method
